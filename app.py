print("🔥 app.py LOADED FROM:", __file__)

import os
import hmac
import hashlib
import random
import time
import re
import xml.etree.ElementTree as ET

import razorpay
import mysql.connector

from flask import (
    Flask, render_template, request, jsonify,
    redirect, url_for, session, send_from_directory,
    Response, render_template_string, flash
)
from flask_mail import Mail, Message
from werkzeug.utils import secure_filename
from datetime import datetime
from openpyxl import Workbook, load_workbook
from openpyxl.styles import Alignment, Font
from dotenv import load_dotenv

load_dotenv()
# ---- DEFINE PATHS ----
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
TEMPLATE_DIR = os.path.join(BASE_DIR, "templates")
html_file_path = os.path.join(TEMPLATE_DIR, "addtocart.html")

print("BASE_DIR:", BASE_DIR)
print("TEMPLATE_DIR:", TEMPLATE_DIR)
print("Addtocart path:", html_file_path)
print("HTML file exists?", os.path.exists(html_file_path))

# ---- SINGLE Flask app definition ----
app = Flask(__name__, template_folder=TEMPLATE_DIR)
app.secret_key = "secret123"

# ================= EMAIL CONFIGURATION =================
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 587
app.config['MAIL_USERNAME'] = 'ankitabandal45@gmail.com'
app.config['MAIL_PASSWORD'] = os.getenv('MAIL_PASSWORD', 'fafaayfwchgfeevu')
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USE_SSL'] = False

mail = Mail(app)

OWNER_EMAIL = app.config['MAIL_USERNAME']

# Excel file path
EXCEL_FILE = "User_Profile_Data.xlsx"

# Razorpay keys
KEY_ID = "rzp_test_Sap1qsHJLFFbC5"
KEY_SECRET = "Ip5rr6atQp4kbke00BxQdQML"

client = razorpay.Client(auth=(KEY_ID, KEY_SECRET))

print("🔥 Flask looking for templates in:", app.template_folder)


# ============================================================
# DATABASE CONNECTION
# ============================================================
def get_db_connection():
    return mysql.connector.connect(
        host=os.getenv("MYSQLHOST"),
        user=os.getenv("MYSQLUSER"),
        password=os.getenv("MYSQLPASSWORD"),
        database=os.getenv("MYSQLDATABASE"),
        port=int(os.getenv("MYSQLPORT")),
        autocommit=True
    )


# ============================================================
# PASSWORD VALIDATION
# ============================================================
def is_strong_password(password):
    pattern = r'^(?=(.*[!@#$%^&*()_+\-=\[\]{};\'":\\|,.<>\/?]){3,})(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$'
    return re.match(pattern, password)


# ============================================================
# USER TABLE HELPERS
# ============================================================
def get_cart_table_name(username, user_id):
    username = username.strip().lower()
    safe_username = re.sub(r'[^a-z0-9_]', '_', username)
    if safe_username[0].isdigit():
        safe_username = "user_" + safe_username
    return f"{safe_username}_{user_id}"


def ensure_user_table(username, user_id):
    table_name = get_cart_table_name(username, user_id)

    db = get_db_connection()
    cursor = db.cursor()

    cursor.execute(f"""
        CREATE TABLE IF NOT EXISTS `{table_name}` (
            id INT AUTO_INCREMENT PRIMARY KEY,
            user_id INT,
            product_id INT,
            row_no VARCHAR(20),
            category VARCHAR(50),
            name VARCHAR(255),
            price DECIMAL(10,2),
            image VARCHAR(255),
            video VARCHAR(255),
            availability INT,
            detail TEXT,
            uploaded_at DATETIME NULL DEFAULT NULL,
            address VARCHAR(255),
            quantity INT DEFAULT 1,
            date DATETIME NULL DEFAULT NULL,
            total DECIMAL(10,2),
            mode VARCHAR(20),
            sub_vc_item INT DEFAULT 0
        )
    """)

    cursor.execute(f"SHOW COLUMNS FROM `{table_name}` LIKE 'product_id'")
    if not cursor.fetchone():
        cursor.execute(f"ALTER TABLE `{table_name}` ADD COLUMN product_id INT DEFAULT NULL")

    cursor.execute(f"SHOW COLUMNS FROM `{table_name}` LIKE 'sub_vc_item'")
    if not cursor.fetchone():
        cursor.execute(f"ALTER TABLE `{table_name}` ADD COLUMN sub_vc_item INT DEFAULT 0")

    db.commit()
    cursor.close()
    db.close()


def create_user_product_activity_table(username, user_id):
    table_name = f"{username}_{user_id}_product_activity"

    db = get_db_connection()
    cursor = db.cursor()

    cursor.execute(f"""
        CREATE TABLE IF NOT EXISTS `{table_name}` (
            id INT AUTO_INCREMENT PRIMARY KEY,
            product_id INT,
            name VARCHAR(255),
            category VARCHAR(100),
            today_search_count INT DEFAULT 0,
            search_time TIME,
            growth_on_search VARCHAR(20),
            today_add_to_cart_count INT DEFAULT 0,
            add_to_cart_time TIME,
            growth_in_addtocart VARCHAR(20),
            today_purchase_count INT DEFAULT 0,
            purchased_time TIME,
            month VARCHAR(20),
            growth FLOAT DEFAULT 0
        )
    """)

    db.commit()
    cursor.close()
    db.close()


# ============================================================
# PRODUCT SYNC HELPERS
# ============================================================
def sync_product_sub_vc(product_id, category):
    db = get_db_connection()
    cursor = db.cursor()

    cursor.execute("""
        SELECT DISTINCT table_name
        FROM information_schema.columns
        WHERE table_schema = DATABASE()
          AND column_name = 'sub_vc_item'
    """)
    user_tables = cursor.fetchall()

    total_sub_vc = 0
    for (table_name,) in user_tables:
        cursor.execute(
            f"SELECT COALESCE(SUM(sub_vc_item), 0) FROM `{table_name}` WHERE product_id = %s AND category = %s",
            (product_id, category)
        )
        total_sub_vc += cursor.fetchone()[0]

    cursor.execute(
        "UPDATE product_availability SET sub_vc = %s WHERE product_id = %s AND category = %s",
        (total_sub_vc, product_id, category)
    )

    db.commit()
    cursor.close()
    db.close()


def sync_product_availability_sql(products):
    db = get_db_connection()
    cursor = db.cursor()

    for prod in products:
        dashboard_avail = abs(prod.get("actual_availability", 0))
        sub_vc = abs(prod.get("sub_vc", 0))
        cart_avail = dashboard_avail + sub_vc

        cursor.execute("""
            INSERT INTO product_availability_sql (product_id, name, category, cart_availability)
            VALUES (%s, %s, %s, %s)
            ON DUPLICATE KEY UPDATE
                cart_availability = VALUES(cart_availability),
                name = VALUES(name),
                category = VALUES(category)
        """, (prod["product_id"], prod.get("dash_item_name", ""), prod.get("category", ""), cart_avail))

    db.commit()
    cursor.close()
    db.close()


def sync_xml_to_sql(xml_file_path):
    db = get_db_connection()
    cursor = db.cursor()

    tree = ET.parse(xml_file_path)
    root = tree.getroot()

    for record in root.findall("record"):
        product_id = record.find("product_id").text
        name = record.find("name").text
        category = record.find("category").text
        cart_avail = int(record.find("cart_availability").text)

        cursor.execute("""
            INSERT INTO product_availability_sql (product_id, name, category, cart_availability)
            VALUES (%s, %s, %s, %s)
            ON DUPLICATE KEY UPDATE
                cart_availability = VALUES(cart_availability),
                name = VALUES(name),
                category = VALUES(category)
        """, (product_id, name, category, cart_avail))

    db.commit()
    cursor.close()
    db.close()


def sync_product_availability_sql_one_row(products):
    db = get_db_connection()
    cursor = db.cursor()

    for prod in products:
        dashboard_avail = abs(prod.get("actual_availability", 0))
        sub_vc = abs(prod.get("sub_vc", 0))
        cart_avail = dashboard_avail + sub_vc

        cursor.execute("""
            SELECT id FROM product_availability_sql
            WHERE product_id=%s AND name=%s AND category=%s
        """, (prod["product_id"], prod.get("dash_item_name", ""), prod.get("category", "")))
        existing = cursor.fetchone()

        if existing:
            cursor.execute(
                "UPDATE product_availability_sql SET cart_availability=%s WHERE id=%s",
                (cart_avail, existing[0])
            )
        else:
            cursor.execute("""
                INSERT INTO product_availability_sql (product_id, name, category, cart_availability)
                VALUES (%s,%s,%s,%s)
            """, (prod["product_id"], prod.get("dash_item_name", ""), prod.get("category", ""), cart_avail))

    db.commit()
    cursor.close()
    db.close()


def update_xml_with_sub_vc(xml_file_path, output_xml_path=None):
    db = get_db_connection()
    cursor = db.cursor()

    tree = ET.parse(xml_file_path)
    root = tree.getroot()

    cursor.execute("""
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = DATABASE()
          AND table_name REGEXP '^[a-zA-Z0-9_]+_[0-9]+$'
    """)
    user_tables = [t[0] for t in cursor.fetchall()]

    for record in root.findall("record"):
        product_id_elem = record.find("product_id")
        category_elem = record.find("category")

        if product_id_elem is None:
            continue

        product_id = int(product_id_elem.text)
        category = category_elem.text if category_elem is not None else None
        total_sub_vc = 0

        for table_name in user_tables:
            cursor.execute(f"SHOW COLUMNS FROM `{table_name}` LIKE 'sub_vc_item'")
            if cursor.fetchone():
                if category:
                    cursor.execute(
                        f"SELECT COALESCE(SUM(sub_vc_item),0) FROM `{table_name}` WHERE product_id=%s AND category=%s",
                        (product_id, category)
                    )
                else:
                    cursor.execute(
                        f"SELECT COALESCE(SUM(sub_vc_item),0) FROM `{table_name}` WHERE product_id=%s",
                        (product_id,)
                    )
                res = cursor.fetchone()
                if res:
                    total_sub_vc += res[0]

        sub_vc_elem = record.find("Sub from VC")
        if sub_vc_elem is None:
            sub_vc_elem = ET.SubElement(record, "Sub from VC")
        sub_vc_elem.text = f"-{total_sub_vc}"

    tree.write(output_xml_path or xml_file_path, encoding="utf-8", xml_declaration=True)
    cursor.close()
    db.close()
    print("✅ XML updated with Sub from VC (negative) successfully!")


# ============================================================
# EXCEL HELPERS
# ============================================================
def create_excel_file():
    if os.path.exists(EXCEL_FILE):
        return

    wb = Workbook()
    ws = wb.active
    ws.title = "UserData"

    ws.merge_cells('A1:A2')
    ws.merge_cells('B1:B2')
    ws.merge_cells('C1:H1')
    ws.merge_cells('I1:P1')
    ws.merge_cells('Q1:Q2')

    ws['A1'] = "User ID"
    ws['B1'] = "Username"
    ws['C1'] = "Clothing and Shoes"
    ws['I1'] = "Skin care and Beauty"
    ws['Q1'] = "Interests"

    sub_headers = [
        "Department", "Height", "Weight", "Age",
        "Fit attributes", "Shoes",
        "Type", "Sensitivity", "Concern", "Tone",
        "Eye care", "Ingredients not wanted",
        "Imp qualities", "Product Formulation"
    ]

    col = 3
    for header in sub_headers:
        ws.cell(row=2, column=col).value = header
        col += 1

    for row in ws.iter_rows(min_row=1, max_row=2):
        for cell in row:
            cell.alignment = Alignment(horizontal="center", vertical="center")
            cell.font = Font(bold=True)

    wb.save(EXCEL_FILE)


# ============================================================
# DATABASE TABLE CREATION
# ============================================================
def create_tables():
    db = get_db_connection()
    cursor = db.cursor()

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS card (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            image VARCHAR(255),
            video VARCHAR(255),
            availability INT,
            price DECIMAL(10,2),
            detail TEXT,
            uploaded_at DATE,
            address VARCHAR(255),
            material VARCHAR(255)
        )
    """)

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS study_material (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            image VARCHAR(255),
            video VARCHAR(255),
            availability INT,
            price DECIMAL(10,2),
            detail TEXT,
            uploaded_at DATE,
            address VARCHAR(255),
            material VARCHAR(255)
        )
    """)

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS food_items (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            image VARCHAR(255),
            video VARCHAR(255),
            availability INT,
            price DECIMAL(10,2),
            detail TEXT,
            uploaded_at DATE,
            address VARCHAR(255),
            material VARCHAR(255)
        )
    """)

    cursor.close()
    db.close()


# ============================================================
# FILE UPLOAD CONFIG
# ============================================================
UPLOAD_FOLDER = "static/products"
os.makedirs(UPLOAD_FOLDER, exist_ok=True)
app.config["UPLOAD_FOLDER"] = UPLOAD_FOLDER


# ============================================================
# ROUTES — AUTH
# ============================================================
@app.route("/", methods=["GET", "POST"])
def login():
    print("👉 ROUTE HIT:", request.path)

    if request.method == "POST":
        email = request.form["email"].strip()
        password = request.form["password"].strip()

        db = get_db_connection()
        cursor = db.cursor()

        cursor.execute("SELECT id, username, password FROM user WHERE email=%s", (email,))
        user = cursor.fetchone()

        if not user:
            cursor.close()
            db.close()
            return render_template("login.html", error="❌ Email not registered")

        if password != user[2]:
            cursor.close()
            db.close()
            return render_template("login.html", error="❌ Incorrect password")

        session.clear()
        session["user_id"] = user[0]
        session["username"] = user[1]
        session["user_obj_id"] = user[0]

        cursor.execute("""
            INSERT INTO user_activity (username, email, password, mode, action_date, action_time)
            VALUES (%s, %s, %s, 'login', CURDATE(), CURTIME())
        """, (user[1], email, password))

        db.commit()

        ensure_user_table(user[1], user[0])
        create_user_product_activity_table(user[1], user[0])

        cursor.close()
        db.close()

        session["flash_message"] = f"🎉 Login Successful, {user[1]} 😊"
        return redirect(url_for("home"))

    return render_template("login.html")


@app.route("/signup", methods=["GET", "POST"])
def signup():
    print("👉 ROUTE HIT:", request.path)

    if request.method == "POST":
        username = request.form["username"].strip()
        email = request.form["email"].strip()
        password = request.form["password"].strip()
        confirm = request.form["confirm_password"].strip()

        if password != confirm:
            return render_template("signup.html", error="❌ Passwords do not match")

        db = get_db_connection()
        cursor = db.cursor()

        cursor.execute("SELECT id FROM strong_password WHERE password=%s AND is_used=0", (password,))
        auto_pwd = cursor.fetchone()

        if not auto_pwd and not is_strong_password(password):
            cursor.close()
            db.close()
            return render_template("signup.html", error="❌ Weak password")

        cursor.execute("SELECT id FROM user WHERE email=%s", (email,))
        if cursor.fetchone():
            cursor.close()
            db.close()
            return render_template("signup.html", error="❌ Email already registered")

        cursor.execute(
            "INSERT INTO user (username, email, password) VALUES (%s,%s,%s)",
            (username, email, password)
        )
        user_id = cursor.lastrowid

        ensure_user_table(username, user_id)
        create_user_product_activity_table(username, user_id)

        cursor.execute("""
            INSERT INTO user_activity (username, email, password, mode, action_date, action_time)
            VALUES (%s, %s, %s, 'signup', CURDATE(), CURTIME())
        """, (username, email, password))

        if auto_pwd:
            cursor.execute("UPDATE strong_password SET is_used=1 WHERE password=%s", (password,))

        db.commit()
        cursor.close()
        db.close()

        session.clear()
        session["user_id"] = user_id
        session["user_obj_id"] = user_id
        session["username"] = username
        session["flash_message"] = f"🎉 Signup Successful, {username}! Your account is created 😊"

        return redirect(url_for("home"))

    return render_template("signup.html")


# ============================================================
# ROUTES — PAGES
# ============================================================
@app.route("/home")
def home():
    print("👉 ROUTE HIT:", request.path)
    if "user_id" not in session:
        return redirect(url_for("login"))

    message = session.pop("flash_message", "")
    username = session.get("username")
    return render_template("dashboard.html", message=message, username=username)


@app.route("/dashboard")
def dashboard():
    return render_template("dashboard.html")


@app.route("/analytics")
def analytics():
    return render_template("Analytics.html")


@app.route("/search")
def search_page():
    return render_template("search.html")


@app.route("/addtocart")
def addtocart_page():
    return render_template("addtocart.html")


@app.route("/addtocart-table")
def addtocart_table():
    return render_template("Addtocard-table.html")


@app.route("/search-table")
def search_table():
    return render_template("search-table.html")


@app.route("/purchased-table")
def purchased_table():
    return render_template("purchase-table.html")


@app.route("/availabilities-table")
def availabilities_table():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT id, name, category, availability, price, updated_at FROM card")
    cards = cursor.fetchall()

    cursor.execute("SELECT id, name, category, availability, price, uploaded_at AS updated_at FROM study_material")
    studies = cursor.fetchall()

    cursor.execute("SELECT id, name, category, availability, price, uploaded_at AS updated_at FROM food_items")
    foods = cursor.fetchall()

    products = cards + studies + foods

    cursor.execute("SELECT id, username FROM user")
    users = cursor.fetchall()

    removed_counts = {}
    sub_vc_counts = {}

    for user in users:
        safe_username = re.sub(r'\W+', '_', user['username'].lower())
        user_table = f"{safe_username}_{user['id']}"

        cursor.execute(f"SHOW TABLES LIKE '{user_table}'")
        if not cursor.fetchone():
            continue

        cursor.execute(f"SHOW COLUMNS FROM `{user_table}` LIKE 'quantity'")
        has_quantity = cursor.fetchone() is not None

        cursor.execute(f"SHOW COLUMNS FROM `{user_table}` LIKE 'product_id'")
        has_product_id = cursor.fetchone() is not None

        cursor.execute(f"SHOW COLUMNS FROM `{user_table}` LIKE 'sub_vc_item'")
        has_sub_vc = cursor.fetchone() is not None

        if not (has_quantity and has_product_id):
            continue

        if has_sub_vc:
            cursor.execute(f"""
                SELECT product_id,
                       COALESCE(SUM(quantity), 0) AS total_qty,
                       COALESCE(SUM(sub_vc_item), 0) AS total_sub_vc
                FROM `{user_table}`
                GROUP BY product_id
            """)
        else:
            cursor.execute(f"""
                SELECT product_id,
                       COALESCE(SUM(quantity), 0) AS total_qty,
                       0 AS total_sub_vc
                FROM `{user_table}`
                GROUP BY product_id
            """)

        for row in cursor.fetchall():
            pid = row["product_id"]
            removed_counts[pid] = removed_counts.get(pid, 0) + row["total_qty"]
            sub_vc_counts[pid] = sub_vc_counts.get(pid, 0) + row["total_sub_vc"]

    cursor.close()
    db.close()

    # FIX: proper <tr> tags in loop
    html = """
    <table border="1">
        <tr>
            <th>ID</th><th>Product ID</th><th>Name</th><th>Category</th>
            <th>Cart Availability</th><th>Removed</th><th>Dashboard Availability</th>
            <th>Add from VC</th><th>Sub from VC</th><th>Actual Availability</th><th>Updated At</th>
        </tr>
    """

    for prod in products:
        prod_id = prod["id"]
        removed_qty = removed_counts.get(prod_id, 0)
        sub_vc = sub_vc_counts.get(prod_id, 0)
        availability = prod.get("availability", 0)

        dashboard_availability = availability
        sub_vc_value = abs(sub_vc)
        cart_availability = dashboard_availability + sub_vc_value

        html += f"""
        <tr>
            <td>{prod_id}</td>
            <td>{prod_id}</td>
            <td>{prod.get('name', '')}</td>
            <td>{prod.get('category', '')}</td>
            <td>{cart_availability}</td>
            <td>{removed_qty}</td>
            <td>{dashboard_availability}</td>
            <td>{removed_qty}</td>
            <td>{sub_vc}</td>
            <td>{dashboard_availability}</td>
            <td>{prod.get('updated_at')}</td>
        </tr>
        """

    html += "</table>"
    return render_template_string(html)


@app.route("/owner-section")
def owner_section():
    return render_template("ownersection.html")


# NOTE: owner_dashboard no longer conflicts with login (removed duplicate @app.route("/"))
@app.route("/owner-dashboard")
def owner_dashboard():
    if not session.get("owner_verified"):
        return "Unauthorized Access", 403
    return render_template("owner_dashboard.html")


@app.route("/addtocartfortheownersection")
def addtocart_owner_section():
    return render_template("addtocartfortheownersection.html")


@app.route("/searchfortheownersection")
def search_for_owner():
    return render_template("searchfortheownersection.html")


@app.route("/privacy-policy")
def privacy_policy():
    return render_template("privacy_policy.html")


@app.route("/terms")
def terms():
    return render_template("terms.html")


@app.route("/refund-policy")
def refund_policy():
    return render_template("refund_policy.html")


@app.route("/Buynow.html")
def buynow_page():
    return render_template("Buynow.html")


@app.route("/buynow")
def buynow():
    return render_template("Buynow.html")


# ============================================================
# ROUTES — OWNER OTP
# ============================================================
@app.route("/send-owner-otp")
def send_owner_otp():
    otp = random.randint(100000000, 999999999)
    session["owner_otp"] = str(otp)
    print(f"🔑 OWNER OTP: {otp}")
    
    try:
        msg = Message(
            "Owner Login OTP",
            sender=app.config['MAIL_USERNAME'],
            recipients=[OWNER_EMAIL]
        )
        msg.body = f"Your Owner Login OTP is: {otp}"
        mail.send(msg)
        print("✅ OTP sent successfully to email")
        return jsonify({"success": True})
    except Exception as e:
        print("❌ Error sending OTP:", e)
        return jsonify({"success": False, "error": str(e)})


@app.route("/verify-owner-otp", methods=["POST"])
def verify_owner_otp():
    data = request.json
    user_otp = data.get("otp")
    if session.get("owner_otp") == user_otp:
        session["owner_verified"] = True
        session.pop("owner_otp", None)
        return jsonify({"success": True, "message": "✅ Owner verified successfully!"})
    return jsonify({"success": False, "message": "❌ Invalid OTP"})


# ============================================================
# ROUTES — PRODUCTS
# ============================================================
@app.route("/get-products")
def get_products():
    print("👉 ROUTE HIT:", request.path)
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM card")
    rows = cursor.fetchall()

    products = []
    for row in rows:
        image = row["image"]
        image_url = image if image and image.startswith("http") else (f"/static/products/{image}" if image else None)
        video = row["video"]
        video_url = video if video and video.startswith("http") else (f"/static/products/{video}" if video else None)

        products.append({
            "id": row["id"],
            "name": row["name"],
            "image": image_url,
            "video": video_url,
            "availability": row["availability"],
            "price": row["price"],
            "uploaded_at": row["uploaded_at"].strftime("%Y-%m-%d") if row["uploaded_at"] else None,
            "address": row["address"],
            "material": row["material"]
        })

    cursor.close()
    db.close()
    return jsonify(products)


@app.route("/get-study-materials")
def get_study_materials():
    print("👉 ROUTE HIT:", request.path)
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM study_material")
    rows = cursor.fetchall()

    products = []
    for row in rows:
        products.append({
            "id": row["id"],
            "name": row["name"],
            "image": f"/static/products/{row['image']}" if row["image"] else None,
            "video": f"/static/products/{row['video']}" if row["video"] else None,
            "availability": row["availability"],
            "price": row["price"],
            "uploaded_at": row["uploaded_at"].strftime("%Y-%m-%d") if row["uploaded_at"] else None,
            "address": row["address"],
            "material": row["material"]
        })

    cursor.close()
    db.close()
    return jsonify(products)


@app.route("/get-food-items")
def get_food_items():
    print("👉 ROUTE HIT:", request.path)
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM food_items")
    rows = cursor.fetchall()

    products = []
    for row in rows:
        products.append({
            "id": row["id"],
            "name": row["name"],
            "image": f"/static/products/{row['image']}" if row["image"] else None,
            "video": f"/static/products/{row['video']}" if row["video"] else None,
            "availability": row["availability"],
            "price": row["price"],
            "uploaded_at": row["uploaded_at"].strftime("%Y-%m-%d") if row["uploaded_at"] else None,
            "address": row["address"],
            "material": row["material"]
        })

    cursor.close()
    db.close()
    return jsonify(products)


@app.route("/get-product-search-table")
def get_product_search_table():
    query = """
        SELECT id AS product_id, name, category, searched_count AS todays_searched_count, last_searched_time
        FROM card
        UNION ALL
        SELECT id, name, category, searched_count, last_searched_time FROM study_material
        UNION ALL
        SELECT id, name, category, searched_count, last_searched_time FROM food_items
        ORDER BY category, product_id;
    """
    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute(query)
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(rows)
    except Exception as e:
        print("Error fetching search table:", e)
        return jsonify([])


@app.route("/add-product", methods=["GET", "POST"])
def add_product():
    print("👉 ROUTE HIT:", request.path)

    if request.method == "GET":
        return render_template("add_product.html")

    db = get_db_connection()
    cursor = db.cursor()

    image_file = request.files.get("image")
    image_name = None
    if image_file and image_file.filename:
        image_name = secure_filename(image_file.filename)
        image_file.save(os.path.join(app.config["UPLOAD_FOLDER"], image_name))

    video_file = request.files.get("video")
    video_name = None
    if video_file and video_file.filename:
        video_name = secure_filename(video_file.filename)
        video_file.save(os.path.join(app.config["UPLOAD_FOLDER"], video_name))

    name = request.form.get("product_name")
    price = request.form.get("product_price")
    availability = request.form.get("availability_count")
    address = request.form.get("address")
    uploaded_date = request.form.get("uploaded_date")
    made_of = request.form.get("made_of")
    used_for = request.form.get("used_for")
    harmful = request.form.get("harmful_activity")
    precautions = request.form.get("precautions")
    product_types = request.form.getlist("product_type[]")

    if not product_types:
        return "Product type is required", 400

    detail = (
        f"Made of: {made_of}\n"
        f"Used for: {used_for}\n"
        f"Harmful: {harmful}\n"
        f"Precautions: {precautions}"
    )

    def insert_product_and_availability(table, category):
        cursor.execute(f"""
            INSERT INTO {table} (name, image, video, availability, price, detail, uploaded_at, address, material)
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)
        """, (name, image_name, video_name, availability, price, detail, uploaded_date, address, made_of))
        pid = cursor.lastrowid
        cursor.execute("""
            INSERT INTO product_availability (dash_item_name, actual_availability, removed, product_id, category)
            VALUES (%s, %s, %s, %s, %s)
        """, (name, availability, 0, pid, category))

    if "Kitchen" in product_types:
        insert_product_and_availability("card", "kitchen")
    if "Study Material" in product_types:
        insert_product_and_availability("study_material", "study_material")
    if "Food" in product_types:
        insert_product_and_availability("food_items", "food_items")

    db.commit()
    cursor.close()
    db.close()

    return redirect(url_for("addtocart_page"))


# ============================================================
# ROUTES — CART
# ============================================================
@app.route("/get-cart-items")
def get_cart_items():
    print("👉 ROUTE HIT:", request.path)

    if "user_id" not in session or "username" not in session:
        return jsonify([])

    user_id = session["user_id"]
    username = session["username"]

    ensure_user_table(username, user_id)
    table_name = get_cart_table_name(username, user_id)

    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    try:
        cursor.execute(f"SELECT * FROM `{table_name}` WHERE quantity > 0 ORDER BY uploaded_at DESC")
        items = cursor.fetchall()

        for row in items:
            img = row.get("image")
            if img:
                row["image"] = img if (img.startswith("http") or img.startswith("/static")) else f"/static/products/{img}"
            else:
                row["image"] = "/static/products/default.png"

            vid = row.get("video")
            if vid:
                row["video"] = vid if (vid.startswith("http") or vid.startswith("/static")) else f"/static/videos/{vid}"
            else:
                row["video"] = ""

            row["date"] = row["date"].strftime("%Y-%m-%d") if row.get("date") else ""

    except Exception as e:
        print("Cart fetch error:", e)
        items = []
    finally:
        cursor.close()
        db.close()

    return jsonify(items)


@app.route("/add-to-cart", methods=["POST"])
def add_to_cart():
    print("👉 ROUTE HIT:", request.path)

    if "cart" not in session:
        session["cart"] = []

    data = request.get_json(force=True)
    cart = data.get("cart", [])

    if not cart:
        return jsonify({"success": False, "error": "Cart empty"}), 400

    user_id = session["user_id"]
    username = session["username"]
    purchased_by = username

    ensure_user_table(username, user_id)

    try:
        db = get_db_connection()
        cursor = db.cursor()

        table_map = {
            "kitchen": "card",
            "study": "study_material",
            "food": "food_items"
        }

        # Use sanitized table name consistently
        client_table = get_cart_table_name(username, user_id)

        for item in cart:
            price = float(item["price"])
            quantity = 1
            table = table_map[item["category"]]

            cursor.execute(f"""
                UPDATE {table} SET availability = availability - %s
                WHERE id = %s AND availability >= %s
            """, (quantity, item["id"], quantity))

            if cursor.rowcount == 0:
                raise Exception(f"{item['name']} is out of stock")

            cursor.execute("""
                UPDATE product_availability
                SET available = available - 1, removed = removed + 1
                WHERE product_id = %s AND category = %s
            """, (item["id"], item["category"]))

            if cursor.rowcount == 0:
                raise Exception("product_availability entry missing for this product")

            cursor.execute(f"SELECT availability FROM {table} WHERE id = %s", (item["id"],))
            remaining_availability = cursor.fetchone()[0]

            cursor.execute("""
                SELECT id, quantity FROM store_data
                WHERE user_id=%s AND product_id=%s AND category=%s AND quantity > 0
                ORDER BY id DESC LIMIT 1
            """, (user_id, item["id"], item["category"]))
            existing = cursor.fetchone()

            if existing:
                cursor.execute("UPDATE store_data SET quantity = quantity + 1 WHERE id = %s", (existing[0],))
            else:
                cursor.execute("""
                    INSERT INTO store_data (
                        user_id, category, name, image, video, price, availability,
                        detail, purchased_by, uploaded_at, address, date, quantity, product_id
                    ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW(),%s,NOW(),%s,%s)
                """, (
                    user_id, item["category"], item["name"],
                    item.get("image", ""), item.get("video", ""),
                    price, remaining_availability, item.get("detail", ""),
                    purchased_by, item.get("address", ""), 1, item["id"]
                ))

            cursor.execute(f"""
                INSERT INTO `{client_table}` (
                    user_id, category, name, image, video, price, availability,
                    detail, uploaded_at, address, date, product_id, sub_vc_item
                ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,NOW(),%s,NOW(),%s,%s)
            """, (
                user_id, item["category"], item["name"],
                item.get("image", ""), item.get("video", ""),
                price, 1, item.get("detail", ""),
                item.get("address", ""), item["id"], 0
            ))

        db.commit()
        cursor.close()
        db.close()
        return jsonify({"success": True})

    except Exception as e:
        print("❌ ADD ERROR:", e)
        try:
            db.rollback()
            cursor.close()
            db.close()
        except:
            pass
        return jsonify({"success": False, "error": str(e)}), 500


@app.route("/remove-from-cart", methods=["POST"])
def remove_from_cart():
    print("👉 ROUTE HIT:", request.path)

    if "user_id" not in session or "username" not in session:
        return jsonify({"success": False})

    data = request.get_json(silent=True) or {}
    cart_id = data.get("id")

    if not cart_id:
        return jsonify({"success": False})

    user_id = session["user_id"]
    username = session["username"]

    ensure_user_table(username, user_id)
    # Use sanitized table name consistently
    table_name = get_cart_table_name(username, user_id)

    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    try:
        cursor.execute(
            f"SELECT quantity, product_id, category FROM `{table_name}` WHERE id = %s",
            (cart_id,)
        )
        row = cursor.fetchone()

        if not row:
            return jsonify({"success": False})

        product_id = row["product_id"]
        category = row["category"]

        if row["quantity"] > 1:
            cursor.execute(
                f"UPDATE `{table_name}` SET quantity = quantity - 1, sub_vc_item = sub_vc_item - 1 WHERE id = %s",
                (cart_id,)
            )
            action = "decremented"
        else:
            cursor.execute(
                f"UPDATE `{table_name}` SET quantity = 0, sub_vc_item = sub_vc_item - 1 WHERE id = %s",
                (cart_id,)
            )
            cursor.execute("""
                UPDATE product_availability
                SET
                    available = available + 1,
                    removed = GREATEST(removed - 1, 0),
                    total_dash = actual_availability - GREATEST(removed - 1, 0),
                    remain_in_dash = actual_availability - GREATEST(removed - 1, 0)
                WHERE product_id = %s AND category = %s
            """, (product_id, category))
            action = "removed"

        sync_product_sub_vc(product_id, category)

        db.commit()
        return jsonify({"success": True, "action": action})

    except Exception as e:
        print("❌ REMOVE ERROR:", e)
        db.rollback()
        return jsonify({"success": False})
    finally:
        cursor.close()
        db.close()


@app.route("/final-add", methods=["POST"])
def final_add():
    print("👉 ROUTE HIT:", request.path)

    if "user_id" not in session:
        return jsonify({"success": False, "error": "Login required"}), 401

    data = request.get_json(force=True)
    cart = data.get("cart", [])

    if not cart:
        return jsonify({"success": False, "error": "Cart is empty"}), 400

    db = get_db_connection()
    cursor = db.cursor(buffered=True, dictionary=True)

    CATEGORY_TABLES = {
        "card": "card",
        "study_material": "study_material",
        "food_items": "food_items"
    }

    user_id = session["user_id"]
    username = session["username"]

    ensure_user_table(username, user_id)
    client_table = get_cart_table_name(username, user_id)

    try:
        cursor.execute(f"""
            SELECT MAX(CAST(SUBSTRING(row_no, 5) AS UNSIGNED)) AS max_row FROM `{client_table}`
        """)
        max_row = cursor.fetchone()["max_row"] or 0
        next_row_no = f"row_{max_row + 1}"

        cursor.execute(f"""
            SELECT 1 FROM `{client_table}` WHERE DATE(date) = CURDATE() AND row_no IS NOT NULL LIMIT 1
        """)
        row_exists_today = cursor.fetchone()
        row_no_value = next_row_no if not row_exists_today else None

        for item in cart:
            table = CATEGORY_TABLES.get(item["category"])
            if not table:
                raise Exception(f"Invalid category: {item['category']}")

            cursor.execute(f"SELECT availability FROM {table} WHERE id=%s", (item["product_id"],))
            stock = cursor.fetchone()
            if not stock or stock["availability"] <= 0:
                raise Exception(f"{item['name']} is out of stock")

            remaining = stock["availability"] - 1
            cursor.execute(f"UPDATE {table} SET availability = availability - 1 WHERE id=%s", (item["product_id"],))

            cursor.execute("""
                UPDATE product_availability SET removed = removed + 1
                WHERE dash_item_name = %s AND category = %s
            """, (item["name"], item["category"]))

            cursor.execute(f"SELECT uploaded_at FROM {table} WHERE id=%s", (item["product_id"],))
            real_uploaded_at = cursor.fetchone()["uploaded_at"]

            cursor.execute("""
                SELECT id, quantity FROM store_data
                WHERE user_id=%s AND product_id=%s AND category=%s ORDER BY id DESC LIMIT 1
            """, (user_id, item["product_id"], item["category"]))
            existing_store = cursor.fetchone()

            if existing_store:
                cursor.execute("UPDATE store_data SET quantity = quantity + 1 WHERE id = %s", (existing_store["id"],))
            else:
                cursor.execute("""
                    INSERT INTO store_data
                    (user_id, product_id, category, name, price, availability, detail,
                     address, purchased_by, uploaded_at, image, video, quantity)
                    VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
                """, (
                    user_id, item.get("product_id") or item.get("id"),
                    item["category"], item["name"], item["price"], remaining,
                    item.get("detail", ""), item.get("address", ""),
                    username, real_uploaded_at, item.get("image", ""), item.get("video", ""), 1
                ))

            select_cursor = db.cursor(buffered=True, dictionary=True)
            select_cursor.execute(f"""
                SELECT id, quantity FROM `{client_table}`
                WHERE name = %s AND category = %s AND DATE(date) = CURDATE()
                  AND date >= NOW() - INTERVAL 1 SECOND
                ORDER BY id DESC LIMIT 1
            """, (item["name"], item["category"]))
            existing = select_cursor.fetchone()
            select_cursor.close()

            if existing:
                new_qty = existing["quantity"] + 1
                cursor.execute(f"""
                    UPDATE `{client_table}` SET quantity=%s, total=%s, uploaded_at=%s WHERE id=%s
                """, (new_qty, item["price"] * new_qty, real_uploaded_at, existing["id"]))
            else:
                cursor.execute(f"""
                    INSERT INTO `{client_table}`
                    (user_id, row_no, category, name, price, image, video, availability,
                     detail, address, quantity, total, uploaded_at, date, product_id)
                    VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,NOW(),%s)
                """, (
                    user_id, row_no_value, item["category"], item["name"],
                    item["price"], item.get("image", ""), item.get("video", ""),
                    remaining, item.get("detail", ""), item.get("address", ""),
                    1, item["price"], real_uploaded_at, item["product_id"]
                ))
                row_no_value = None

        db.commit()
        cursor.close()
        db.close()
        return jsonify({"success": True})

    except Exception as e:
        db.rollback()
        cursor.close()
        db.close()
        print("FINAL ADD ERROR:", e)
        return jsonify({"success": False, "error": str(e)}), 500


@app.route("/remove-from-store", methods=["POST"])
def remove_from_store():
    print("👉 ROUTE HIT:", request.path)

    try:
        data = request.get_json(force=True)
        product_id = data.get("product_id")
        category = data.get("category")

        if not product_id or not category:
            return jsonify({"success": False, "error": "Invalid data"}), 400

        table_map = {
            "kitchen": "card",
            "study": "study_material",
            "food": "food_items"
        }

        if category not in table_map:
            return jsonify({"success": False, "error": "Invalid category"}), 400

        db = get_db_connection()
        cursor = db.cursor()

        cursor.execute("""
            DELETE FROM store_data WHERE product_id=%s AND category=%s ORDER BY id DESC LIMIT 1
        """, (product_id, category))

        if cursor.rowcount == 0:
            db.rollback()
            return jsonify({"success": False, "error": "Item not found in cart"}), 404

        cursor.execute(f"""
            UPDATE {table_map[category]} SET availability = availability + 1 WHERE id = %s
        """, (product_id,))

        db.commit()
        cursor.close()
        db.close()
        return jsonify({"success": True})

    except Exception as e:
        print("❌ REMOVE ERROR:", e)
        return jsonify({"success": False, "error": str(e)}), 500


@app.route("/finalize-cart", methods=["POST"])
def finalize_cart():
    print("👉 ROUTE HIT:", request.path)

    cart = request.json.get("cart", [])
    if not cart:
        return jsonify({"success": False, "error": "Cart empty"}), 400

    user_id = session.get("user_id")
    purchased_by = session.get("username")
    cart_total = sum(float(item["price"]) for item in cart)

    db = get_db_connection()
    cursor = db.cursor()

    cursor.execute("""
        INSERT INTO cart_summary (user_id, purchased_by, total) VALUES (%s, %s, %s)
    """, (user_id, purchased_by, cart_total))

    db.commit()
    cursor.close()
    db.close()

    return jsonify({"success": True, "cart_total": cart_total})


# ============================================================
# ROUTES — XML / DATA FEEDS
# ============================================================
@app.route("/availabilities-xml")
def availabilities_xml():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT id AS product_id, name, category, availability, price FROM card")
    cards = cursor.fetchall()
    cursor.execute("SELECT id AS product_id, name, category, availability, price FROM study_material")
    studies = cursor.fetchall()
    cursor.execute("SELECT id AS product_id, name, category, availability, price FROM food_items")
    foods = cursor.fetchall()

    all_items = cards + studies + foods
    root = ET.Element("Availabilities_data")

    for prod in all_items:
        record = ET.SubElement(root, "record")
        ET.SubElement(record, "product_id").text = str(prod["product_id"])
        ET.SubElement(record, "name").text = prod.get("name", "")
        ET.SubElement(record, "category").text = prod.get("category", "")
        ET.SubElement(record, "availability").text = str(prod.get("availability", 0))
        ET.SubElement(record, "price").text = str(prod.get("price", 0))

    xml_str = ET.tostring(root, encoding="utf-8", xml_declaration=True)
    cursor.close()
    db.close()
    return Response(xml_str, mimetype="application/xml")


@app.route("/availabilities-vc-xml")
def availabilities_vc_xml():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT id, name, category, availability, last_addtocart_time, COALESCE(last_addtocart_count,0) AS last_addtocart_count FROM card")
    cards = cursor.fetchall()
    cursor.execute("SELECT id, name, category, availability, last_addtocart_time, COALESCE(last_addtocart_count,0) AS last_addtocart_count FROM study_material")
    studies = cursor.fetchall()
    cursor.execute("SELECT id, name, category, availability, last_addtocart_time, COALESCE(last_addtocart_count,0) AS last_addtocart_count FROM food_items")
    foods = cursor.fetchall()

    products = cards + studies + foods

    cursor.execute("SELECT id, username FROM user")
    users = cursor.fetchall()

    removed_counts = {}

    for user in users:
        safe_username = re.sub(r'\W+', '_', user['username'].lower())
        user_table = f"{safe_username}_{user['id']}"

        cursor.execute(f"SHOW TABLES LIKE '{user_table}'")
        if not cursor.fetchone():
            continue

        cursor.execute(f"SHOW COLUMNS FROM `{user_table}`")
        cols = [c["Field"] for c in cursor.fetchall()]
        if "product_id" not in cols:
            continue

        has_quantity = "quantity" in cols
        has_created = "created_at" in cols

        if has_quantity and has_created:
            query = f"""
                SELECT product_id, COALESCE(SUM(quantity),0) AS total_qty
                FROM `{user_table}` WHERE DATE(created_at) = CURDATE() GROUP BY product_id
            """
        elif has_quantity:
            query = f"SELECT product_id, COALESCE(SUM(quantity),0) AS total_qty FROM `{user_table}` GROUP BY product_id"
        else:
            query = f"SELECT product_id, COUNT(*) AS total_qty FROM `{user_table}` GROUP BY product_id"

        try:
            cursor.execute(query)
            for row in cursor.fetchall():
                pid = row["product_id"]
                removed_counts[pid] = removed_counts.get(pid, 0) + row["total_qty"]
        except:
            continue

    table_map = {
        "card": "card",
        "study_material": "study_material",
        "food_items": "food_items"
    }

    root = ET.Element("Availabilities_data")

    for prod in products:
        pid = prod["id"]
        category = prod.get("category")
        addfrom_vc = removed_counts.get(pid, 0)
        prev_count = prod.get("last_addtocart_count", 0)
        table_name = table_map.get(category)

        if table_name and addfrom_vc > prev_count:
            cursor.execute(f"""
                UPDATE {table_name} SET last_addtocart_time = NOW(), last_addtocart_count = %s WHERE id = %s
            """, (addfrom_vc, pid))
            db.commit()

            cursor.execute(f"SELECT last_addtocart_time FROM {table_name} WHERE id = %s", (pid,))
            row = cursor.fetchone()
            prod["last_addtocart_time"] = row["last_addtocart_time"] if row else prod["last_addtocart_time"]

        record = ET.SubElement(root, "record")
        ET.SubElement(record, "product_id").text = str(pid)
        ET.SubElement(record, "name").text = prod.get("name", "")
        ET.SubElement(record, "category").text = category
        ET.SubElement(record, "cart_availability").text = str(prod.get("availability", 0))
        ET.SubElement(record, "addfrom_vc").text = str(addfrom_vc)
        last_time = prod.get("last_addtocart_time")
        ET.SubElement(record, "last_time").text = last_time.strftime("%Y-%m-%d %H:%M:%S") if last_time else ""

    xml_str = ET.tostring(root, encoding="utf-8", xml_declaration=True)
    cursor.close()
    db.close()
    return Response(xml_str, mimetype="application/xml")


@app.route("/get-addtocart-data")
def get_addtocart_data_from_db():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT id AS product_id, name, category, availability AS todays_addtocart_count, last_addtocart_time FROM card
        UNION ALL
        SELECT id, name, category, availability, last_addtocart_time FROM study_material
        UNION ALL
        SELECT id, name, category, availability, last_addtocart_time FROM food_items
        ORDER BY product_id;
    """)
    rows = cursor.fetchall()
    cursor.close()
    db.close()
    return jsonify(rows)


@app.route("/user-addtocart-trend-xml")
def user_addtocart_trend_xml():
    username = session.get("username")
    user_id = session.get("user_id")

    if not username or not user_id:
        return Response("<records></records>", mimetype="text/xml")

    table_name = get_cart_table_name(username, user_id)

    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    cursor.execute(f"""
        SELECT product_id, name, category, COUNT(*) AS total_count, MAX(date) AS last_time
        FROM `{table_name}` GROUP BY product_id, name, category ORDER BY last_time DESC
    """)
    rows = cursor.fetchall()

    root = ET.Element("records")
    for i, row in enumerate(rows, 1):
        record = ET.SubElement(root, "record")
        ET.SubElement(record, "id").text = str(i)
        ET.SubElement(record, "product_id").text = str(row["product_id"])
        ET.SubElement(record, "name").text = row["name"]
        ET.SubElement(record, "category").text = row["category"]
        ET.SubElement(record, "count").text = str(row["total_count"])
        ET.SubElement(record, "time").text = row["last_time"].strftime("%I:%M %p") if row["last_time"] else "N/A"

    xml_data = ET.tostring(root)
    cursor.close()
    db.close()
    return Response(xml_data, mimetype="text/xml")


# ============================================================
# ROUTES — SEARCH
# ============================================================
@app.route("/search-product", methods=["POST"])
def search_product():
    product_id = request.form.get("product_id")
    category = request.form.get("category")

    table_map = {"card": "card", "study_material": "study_material", "food_items": "food_items"}
    table_name = table_map.get(category)
    if not table_name:
        return jsonify({"status": "error", "message": "Invalid category"})

    try:
        product_id = int(product_id)
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)

        cursor.execute(f"""
            UPDATE {table_name} SET searched_count = searched_count + 1, last_searched_time = NOW() WHERE id = %s
        """, (product_id,))
        conn.commit()

        cursor.execute(f"SELECT searched_count, last_searched_time FROM {table_name} WHERE id = %s", (product_id,))
        row = cursor.fetchone()
        cursor.close()
        conn.close()

        updated_time = row["last_searched_time"].strftime("%Y-%m-%d %H:%M:%S") if row and row["last_searched_time"] else None

        return jsonify({
            "status": "success",
            "searched_count": row["searched_count"] if row else 0,
            "last_searched_time": updated_time
        })

    except Exception as e:
        print("Error logging search:", e)
        return jsonify({"status": "error"})


@app.route("/search-products")
def search_products():
    now = int(time.time())
    last_call = session.get("last_search_call", 0)

    if now - last_call < 1:
        return jsonify([])

    session["last_search_call"] = now

    query = request.args.get("q", "").strip()
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    like_pattern = f"%{query}%"

    cursor.execute("""
        SELECT id, name, category, COALESCE(searched_count,0) AS searched_count, last_searched_time
        FROM (
            SELECT id, name, category, searched_count, last_searched_time FROM card WHERE name LIKE %s
            UNION ALL
            SELECT id, name, category, searched_count, last_searched_time FROM study_material WHERE name LIKE %s
            UNION ALL
            SELECT id, name, category, searched_count, last_searched_time FROM food_items WHERE name LIKE %s
        ) AS combined
    """, (like_pattern, like_pattern, like_pattern))
    results = cursor.fetchall()

    processed = set()
    username = session.get("username")
    user_id = session.get("user_id")
    table_name = f"{username}_{user_id}_product_activity"

    for item in results:
        key = (item["category"], item["id"])
        if key in processed:
            continue
        processed.add(key)

        cursor.execute(f"""
            UPDATE {item['category']} SET searched_count = COALESCE(searched_count,0) + 1, last_searched_time = NOW()
            WHERE id = %s
        """, (item["id"],))

        cursor.execute(f"SELECT today_search_count FROM `{table_name}` WHERE product_id = %s", (item["id"],))
        existing = cursor.fetchone()

        if existing:
            new_count = existing["today_search_count"] + 1
            cursor.execute(f"""
                UPDATE `{table_name}` SET today_search_count = %s, search_time = NOW(), growth_on_search = %s
                WHERE product_id = %s
            """, (new_count, f"{new_count}/100", item["id"]))
        else:
            cursor.execute(f"""
                INSERT INTO `{table_name}` (product_id, name, category, today_search_count, search_time, month, growth_on_search)
                VALUES (%s,%s,%s,1,NOW(),MONTHNAME(NOW()),%s)
            """, (item["id"], item["name"], item["category"], "1/100"))

    conn.commit()

    for item in results:
        cursor.execute(f"SELECT COALESCE(searched_count,0) AS searched_count FROM {item['category']} WHERE id = %s", (item["id"],))
        item["searched_count"] = cursor.fetchone()["searched_count"]

    cursor.close()
    conn.close()
    return jsonify(results)


@app.route("/products/search")
def products_search():
    query = request.args.get("q", "").strip()
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    like_pattern = f"%{query}%"

    cursor.execute("""
        SELECT id, name, category, COALESCE(searched_count,0) AS searched_count, last_searched_time
        FROM (
            SELECT id, name, category, searched_count, last_searched_time FROM card WHERE name LIKE %s
            UNION ALL
            SELECT id, name, category, searched_count, last_searched_time FROM study_material WHERE name LIKE %s
            UNION ALL
            SELECT id, name, category, searched_count, last_searched_time FROM food_items WHERE name LIKE %s
        ) AS combined
    """, (like_pattern, like_pattern, like_pattern))
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(results)


@app.route("/track-search")
def track_search():
    query = request.args.get("q", "").strip()
    user_id = session.get("user_id")

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    like_pattern = f"%{query}%"

    cursor.execute("""
        SELECT id, name, category FROM (
            SELECT id, name, category FROM card WHERE name LIKE %s
            UNION ALL
            SELECT id, name, category FROM study_material WHERE name LIKE %s
            UNION ALL
            SELECT id, name, category FROM food_items WHERE name LIKE %s
        ) AS combined
    """, (like_pattern, like_pattern, like_pattern))
    results = cursor.fetchall()

    processed = set()
    for item in results:
        key = (item["category"], item["id"])
        if key in processed:
            continue
        processed.add(key)

        cursor.execute(f"""
            UPDATE {item['category']} SET searched_count = COALESCE(searched_count,0) + 1, last_searched_time = NOW()
            WHERE id = %s
        """, (item["id"],))

        if user_id:
            cursor.execute("""
                INSERT INTO search_logs (user_id, product_id, category, search_time) VALUES (%s, %s, %s, NOW())
            """, (user_id, item["id"], item["category"]))

    conn.commit()
    cursor.close()
    conn.close()
    return jsonify({"status": "updated"})


@app.route('/products/search-user')
def search_user_products():
    user_id = session.get('user_id')

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT sl.product_id AS id, sl.category,
               COALESCE(c.name, s.name, f.name) AS name,
               COUNT(*) AS searched_count,
               MAX(sl.search_time) AS last_searched_time
        FROM search_logs sl
        LEFT JOIN card c ON sl.product_id = c.id AND sl.category = 'card'
        LEFT JOIN study_material s ON sl.product_id = s.id AND sl.category = 'study_material'
        LEFT JOIN food_items f ON sl.product_id = f.id AND sl.category = 'food_items'
        WHERE sl.user_id = %s
        GROUP BY sl.product_id, sl.category
    """, (user_id,))
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(results)


# ============================================================
# ROUTES — ADD TO CART TRACKING
# ============================================================
@app.route("/track-add-to-cart", methods=["POST"])
def track_add_to_cart():
    print("Add to Cart route triggered")

    product_id = request.form.get("product_id")
    product_name = request.form.get("name")
    product_category = request.form.get("category")

    conn = get_db_connection()
    cursor = conn.cursor()

    username = session.get("username")
    user_id = session.get("user_id")
    table_name = f"{username}_{user_id}_product_activity"

    cursor.execute(f"SELECT today_add_to_cart_count FROM `{table_name}` WHERE product_id = %s", (product_id,))
    existing = cursor.fetchone()

    cursor.execute("SELECT CONVERT_TZ(NOW(), '+00:00', '+05:30')")
    ist_time = cursor.fetchone()[0]

    if existing:
        new_count = existing[0] + 1
        cursor.execute(f"""
            UPDATE `{table_name}` SET today_add_to_cart_count = %s, add_to_cart_time = %s, growth_in_addtocart = %s
            WHERE product_id = %s
        """, (new_count, ist_time, f"{new_count}/100", product_id))
    else:
        cursor.execute(f"""
            INSERT INTO `{table_name}`
            (product_id, name, category, today_add_to_cart_count, add_to_cart_time, growth_in_addtocart, month)
            VALUES (%s,%s,%s,%s,%s,%s,MONTHNAME(%s))
        """, (product_id, product_name, product_category, 1, ist_time, "1/100", ist_time))

    conn.commit()
    cursor.close()
    conn.close()
    return jsonify({"message": "Product cart activity recorded", "time": str(ist_time)})


@app.route("/owner-addtocart-data")
def owner_addtocart_data():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SHOW TABLES")
    tables = cursor.fetchall()

    combined = {}

    for t in tables:
        table_name = list(t.values())[0]
        if "product_activity" not in table_name:
            continue

        cursor.execute(f"""
            SELECT product_id, name, category, today_add_to_cart_count, add_to_cart_time FROM `{table_name}`
        """)

        for r in cursor.fetchall():
            pid = f"{r['name']}_{r['category']}"
            if pid not in combined:
                combined[pid] = {
                    "product_id": r["product_id"],
                    "name": r["name"],
                    "category": r["category"],
                    "count": 0,
                    "time": r["add_to_cart_time"]
                }
            combined[pid]["count"] += (r["today_add_to_cart_count"] or 0)
            if r["add_to_cart_time"]:
                if combined[pid]["time"] is None or r["add_to_cart_time"] > combined[pid]["time"]:
                    combined[pid]["time"] = r["add_to_cart_time"]

    cursor.close()
    conn.close()

    from datetime import timedelta
    for item in combined.values():
        t = item["time"]
        if isinstance(t, datetime):
            item["time"] = t.strftime("%Y-%m-%d %H:%M:%S")
        elif isinstance(t, timedelta):
            item["time"] = str(t)
        else:
            item["time"] = None

    return jsonify({"data": list(combined.values()), "status": "success"})


# ============================================================
# ROUTES — PROFILE
# ============================================================
@app.route("/save-user-detail", methods=["POST"])
def save_user_detail():
    try:
        name = request.form.get("name") or None

        db_temp = get_db_connection()
        cursor_temp = db_temp.cursor(dictionary=True)
        cursor_temp.execute("SELECT email FROM user WHERE id=%s", (session.get("user_id"),))
        user_row = cursor_temp.fetchone()
        email = user_row["email"] if user_row else None
        cursor_temp.close()
        db_temp.close()

        session['current_user_email'] = email

        age_raw = request.form.get("age")
        phone1 = request.form.get("phone1") or None
        phone2 = request.form.get("phone2") or None
        address1 = request.form.get("address1") or None
        address2 = request.form.get("address2") or None
        age = int(age_raw) if age_raw and age_raw.isdigit() else None

        file = request.files.get("profile_image")
        profile_image_path = None
        if file and file.filename:
            filename = secure_filename(file.filename)
            upload_folder = os.path.join("static", "profile_images")
            os.makedirs(upload_folder, exist_ok=True)
            file.save(os.path.join(upload_folder, filename))
            profile_image_path = f"/static/profile_images/{filename}"

        db = get_db_connection()
        cursor = db.cursor()

        cursor.execute("SELECT id FROM save_detail WHERE email=%s ORDER BY id DESC LIMIT 1", (email,))
        existing = cursor.fetchone()

        if existing:
            cursor.execute("""
                UPDATE save_detail SET name=%s, age=%s, phone1=%s, phone2=%s,
                    address1=%s, address2=%s, profile_image=COALESCE(%s, profile_image)
                WHERE id=%s
            """, (name, age, phone1, phone2, address1, address2, profile_image_path, existing[0]))
        else:
            cursor.execute("""
                INSERT INTO save_detail (name, age, phone1, phone2, address1, address2, email, profile_image)
                VALUES (%s,%s,%s,%s,%s,%s,%s,%s)
            """, (name, age, phone1, phone2, address1, address2, email, profile_image_path))

        db.commit()
        cursor.close()
        db.close()
        return redirect("/profile")

    except Exception as e:
        import traceback
        traceback.print_exc()
        return redirect("/profile")


@app.route("/profile")
def profile_page():
    try:
        if "user_id" not in session:
            return redirect(url_for("login"))

        db = get_db_connection()
        cursor = db.cursor(dictionary=True)

        user = {"name": "", "email": "", "profile_image": "/static/default_profile.png"}

        cursor.execute("SELECT email FROM user WHERE id=%s", (session["user_id"],))
        login_user = cursor.fetchone()

        if login_user:
            email = login_user["email"]
            cursor.execute("""
                SELECT name, email, profile_image FROM save_detail WHERE email=%s ORDER BY id DESC LIMIT 1
            """, (email,))
            detail = cursor.fetchone()

            if detail:
                user["name"] = detail["name"] or ""
                user["email"] = detail["email"] or ""
                user["profile_image"] = detail["profile_image"] or "/static/default_profile.png"
            else:
                user["name"] = login_user.get("username", "")
                user["email"] = email

        cursor.close()
        db.close()
        return render_template("profile.html", user=user)

    except Exception as e:
        print("Error loading profile:", e)
        return render_template("profile.html", user={"name": "", "email": ""})


@app.route("/get-latest-profile")
def get_latest_profile():
    if "user_id" not in session:
        return jsonify({"success": False})

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT email FROM user WHERE id=%s", (session["user_id"],))
    user_row = cursor.fetchone()

    if not user_row:
        cursor.close()
        conn.close()
        return jsonify({"success": False})

    cursor.execute("""
        SELECT name, email, profile_image FROM save_detail WHERE email=%s ORDER BY id DESC LIMIT 1
    """, (user_row["email"],))
    row = cursor.fetchone()
    cursor.close()
    conn.close()

    if row:
        return jsonify({"success": True, "name": row["name"], "email": row["email"], "profile_image": row["profile_image"]})
    return jsonify({"success": False})


@app.route("/get-full-profile")
def get_full_profile():
    if "user_id" not in session:
        return jsonify({"success": False})

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT email FROM user WHERE id=%s", (session["user_id"],))
    user_row = cursor.fetchone()

    if not user_row:
        cursor.close()
        conn.close()
        return jsonify({"success": False})

    cursor.execute("""
        SELECT name, age, phone1, phone2, address1, address2, email, profile_image
        FROM save_detail WHERE email=%s ORDER BY id DESC LIMIT 1
    """, (user_row["email"],))
    detail = cursor.fetchone()
    cursor.close()
    conn.close()

    if detail:
        return jsonify({
            "success": True,
            "name": detail["name"] or "",
            "age": detail["age"] or "",
            "phone1": detail["phone1"] or "",
            "phone2": detail["phone2"] or "",
            "address1": detail["address1"] or "",
            "address2": detail["address2"] or "",
            "email": detail["email"] or "",
            "profile_image": detail["profile_image"] or "/static/default_profile.png"
        })
    return jsonify({"success": False})


@app.route("/check-user-detail", methods=["POST"])
def check_user_detail():
    user_id = session.get("user_id")
    if not user_id:
        return jsonify({"exists": False})

    try:
        db = get_db_connection()
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT email FROM user WHERE id=%s", (user_id,))
        user_row = cursor.fetchone()

        if not user_row:
            return jsonify({"exists": False})

        cursor.execute("""
            SELECT id FROM save_detail WHERE email=%s AND name IS NOT NULL ORDER BY id DESC LIMIT 1
        """, (user_row["email"],))
        detail = cursor.fetchone()
        cursor.close()
        db.close()
        return jsonify({"exists": bool(detail)})

    except Exception as e:
        print("Error in /check-user-detail:", e)
        return jsonify({"exists": False})


@app.route("/profile-view")
def profile_view_page():
    user = {"name": "Kevin Smith", "email": "example@example.com", "profile_image": "/static/default_profile.png"}
    return render_template("profile_view.html", user=user)


@app.route("/profile-view-basic")
def profile_view_basic():
    if "user_id" not in session:
        return redirect(url_for("login"))

    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT email FROM user WHERE id=%s", (session["user_id"],))
        user_row = cursor.fetchone()

        user = {"name": "", "profile_image": "/static/default_profile.png"}

        if user_row:
            cursor.execute("""
                SELECT name, profile_image FROM save_detail WHERE email=%s ORDER BY id DESC LIMIT 1
            """, (user_row["email"],))
            detail = cursor.fetchone()
            if detail:
                user["name"] = detail["name"] or ""
                user["profile_image"] = detail["profile_image"] or "/static/default_profile.png"

        cursor.close()
        conn.close()
        return render_template("profile_view.html", user=user)

    except Exception as e:
        print("Error loading profile view:", e)
        return render_template("profile_view.html", user={"name": "", "profile_image": "/static/default_profile.png"})


@app.route("/profile-view-name-image")
def profile_view_name_image_page():
    if "user_id" not in session:
        return redirect(url_for("login"))

    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT email FROM user WHERE id=%s", (session["user_id"],))
        user_row = cursor.fetchone()

        user = {"name": "", "profile_image": "/static/default_profile.png"}

        if user_row:
            cursor.execute("""
                SELECT name, profile_image FROM save_detail WHERE email=%s ORDER BY id DESC LIMIT 1
            """, (user_row["email"],))
            detail = cursor.fetchone()
            if detail:
                user["name"] = detail["name"] or ""
                user["profile_image"] = detail["profile_image"] or "/static/default_profile.png"

        cursor.close()
        conn.close()
        return render_template("profile_view.html", user=user)

    except Exception as e:
        print("Error loading name & image:", e)
        return render_template("profile_view.html", user={"name": "", "profile_image": "/static/default_profile.png"})


# ============================================================
# ROUTES — CART / VIEW
# ============================================================
@app.route("/view-cart")
def view_cart():
    if "user_id" not in session:
        return redirect(url_for("login"))

    user = {"name": "", "email": ""}

    try:
        db = get_db_connection()
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT email FROM user WHERE id=%s", (session.get("user_id"),))
        user_row = cursor.fetchone()

        if user_row:
            cursor.execute("""
                SELECT username, email FROM support_sd WHERE email = %s ORDER BY id DESC LIMIT 1
            """, (user_row["email"],))
            row = cursor.fetchone()
            if row:
                user["name"] = row["username"] or ""
                user["email"] = row["email"] or ""

        cursor.close()
        db.close()

    except Exception as e:
        print("Error loading popup user:", e)

    return render_template("view_card.html", user=user)


@app.route("/get-store-data")
def get_store_data():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM store_data")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    return jsonify(data)


# ============================================================
# ROUTES — PAYMENT
# ============================================================
@app.route("/create-order", methods=["POST"])
def create_order():
    data = request.get_json()
    amount = int(data["amount"])

    order = client.order.create({
        "amount": amount * 100,
        "currency": "INR",
        "payment_capture": 1
    })
    return jsonify(order)


@app.route("/verify-payment", methods=["POST"])
def verify_payment():
    data = request.get_json()

    razorpay_order_id = data["razorpay_order_id"]
    razorpay_payment_id = data["razorpay_payment_id"]
    razorpay_signature = data["razorpay_signature"]

    body = razorpay_order_id + "|" + razorpay_payment_id

    expected_signature = hmac.new(
        bytes(KEY_SECRET, "utf-8"),
        bytes(body, "utf-8"),
        hashlib.sha256
    ).hexdigest()

    if expected_signature == razorpay_signature:
        return jsonify({"status": "success", "message": "Payment Successful"})
    else:
        return jsonify({"status": "failed", "message": "Payment Failed"})


@app.route("/get-buynow-item/<int:id>")
def get_buynow_item(id):
    if "user_id" not in session or "username" not in session:
        return jsonify({"error": "Not logged in"}), 401

    user_id = session["user_id"]
    username = session["username"]
    table_name = get_cart_table_name(username, user_id)

    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    try:
        cursor.execute(f"SELECT * FROM `{table_name}` WHERE id = %s", (id,))
        item = cursor.fetchone()
        if not item:
            return jsonify({"error": "Item not found"}), 404

        return jsonify({
            "id": item["id"],
            "name": item["name"],
            "price": float(item["price"]),
            "image": item["image"],
            "availability": item["availability"]
        })
    except Exception as e:
        print("BuyNow fetch error:", e)
        return jsonify({"error": "Server error"}), 500
    finally:
        cursor.close()
        db.close()


# ============================================================
# ROUTES — EXCEL / MISC
# ============================================================
@app.route('/save_data', methods=['POST'])
def save_data():
    data = request.get_json()

    user_id = session.get("user_id")
    username = session.get("username")

    if not user_id or not username:
        return jsonify({"status": "error", "message": "User not logged in"}), 401

    if not os.path.exists(EXCEL_FILE):
        create_excel_file()

    wb = load_workbook(EXCEL_FILE)
    ws = wb.active

    existing_row = None
    for row in range(2, ws.max_row + 1):
        if ws.cell(row=row, column=1).value == user_id:
            existing_row = row
            break

    interests = data.get("Interests", [])
    if isinstance(interests, list):
        interests = ", ".join(interests) if interests else "--"

    row_data = [
        user_id, username,
        data.get("Department", "--"), data.get("Height", "--"),
        data.get("Weight", "--"), data.get("Age", "--"),
        data.get("Fit attributes", "--"), data.get("Shoes", "--"),
        data.get("Type", "--"), data.get("Sensitivity", "--"),
        data.get("Concern", "--"), data.get("Tone", "--"),
        data.get("Eye care", "--"), data.get("Ingredients not wanted", "--"),
        data.get("Imp qualities", "--"), data.get("Product Formulation", "--"),
        interests
    ]

    if existing_row:
        for col, value in enumerate(row_data, start=1):
            ws.cell(row=existing_row, column=col).value = value
        action = "updated"
    else:
        ws.append(row_data)
        action = "added"

    wb.save(EXCEL_FILE)
    return jsonify({"status": "success", "message": f"Data {action} successfully!"})


@app.route("/get-strong-password")
def get_strong_password():
    db = get_db_connection()
    cursor = db.cursor()
    cursor.execute("SELECT password FROM strong_password WHERE is_used=0 ORDER BY id ASC LIMIT 1")
    row = cursor.fetchone()
    cursor.close()
    db.close()

    if not row:
        return jsonify({"error": "No strong passwords available"}), 404
    return jsonify({"password": row[0]})


@app.route("/test-db")
def test_db():
    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT id, name, category, searched_count, last_searched_time FROM card LIMIT 5;")
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(rows)
    except Exception as e:
        return jsonify({"error": str(e)})


#---------------------deployment of project------------------------------------------------

@app.route("/create-tables")
def create_tables_route():
    try:
        db = get_db_connection()
        cursor = db.cursor()
        
        cursor.execute("""CREATE TABLE IF NOT EXISTS user (
            id INT AUTO_INCREMENT PRIMARY KEY,
            username VARCHAR(255),
            email VARCHAR(255) UNIQUE,
            password VARCHAR(255)
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS user_activity (
            id INT AUTO_INCREMENT PRIMARY KEY,
            username VARCHAR(255),
            email VARCHAR(255),
            password VARCHAR(255),
            mode VARCHAR(50),
            action_date DATE,
            action_time TIME
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS strong_password (
            id INT AUTO_INCREMENT PRIMARY KEY,
            password VARCHAR(255),
            is_used TINYINT DEFAULT 0
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS card (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            image VARCHAR(255),
            video VARCHAR(255),
            availability INT,
            price DECIMAL(10,2),
            detail TEXT,
            uploaded_at DATE,
            address VARCHAR(255),
            material VARCHAR(255),
            category VARCHAR(100),
            searched_count INT DEFAULT 0,
            last_searched_time DATETIME,
            last_addtocart_time DATETIME,
            last_addtocart_count INT DEFAULT 0,
            updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS study_material (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            image VARCHAR(255),
            video VARCHAR(255),
            availability INT,
            price DECIMAL(10,2),
            detail TEXT,
            uploaded_at DATE,
            address VARCHAR(255),
            material VARCHAR(255),
            category VARCHAR(100),
            searched_count INT DEFAULT 0,
            last_searched_time DATETIME,
            last_addtocart_time DATETIME,
            last_addtocart_count INT DEFAULT 0
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS food_items (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            image VARCHAR(255),
            video VARCHAR(255),
            availability INT,
            price DECIMAL(10,2),
            detail TEXT,
            uploaded_at DATE,
            address VARCHAR(255),
            material VARCHAR(255),
            category VARCHAR(100),
            searched_count INT DEFAULT 0,
            last_searched_time DATETIME,
            last_addtocart_time DATETIME,
            last_addtocart_count INT DEFAULT 0
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS product_availability (
            id INT AUTO_INCREMENT PRIMARY KEY,
            dash_item_name VARCHAR(255),
            actual_availability INT,
            removed INT DEFAULT 0,
            product_id INT,
            category VARCHAR(100),
            available INT,
            sub_vc INT DEFAULT 0,
            total_dash INT,
            remain_in_dash INT
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS product_availability_sql (
            id INT AUTO_INCREMENT PRIMARY KEY,
            product_id INT UNIQUE,
            name VARCHAR(255),
            category VARCHAR(100),
            cart_availability INT
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS store_data (
            id INT AUTO_INCREMENT PRIMARY KEY,
            user_id INT,
            product_id INT,
            category VARCHAR(100),
            name VARCHAR(255),
            price DECIMAL(10,2),
            availability INT,
            detail TEXT,
            address VARCHAR(255),
            purchased_by VARCHAR(255),
            uploaded_at DATETIME,
            image VARCHAR(255),
            video VARCHAR(255),
            quantity INT DEFAULT 1,
            date DATETIME DEFAULT CURRENT_TIMESTAMP
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS cart_summary (
            id INT AUTO_INCREMENT PRIMARY KEY,
            user_id INT,
            purchased_by VARCHAR(255),
            total DECIMAL(10,2),
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS save_detail (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            age INT,
            phone1 VARCHAR(20),
            phone2 VARCHAR(20),
            address1 VARCHAR(255),
            address2 VARCHAR(255),
            email VARCHAR(255),
            profile_image VARCHAR(255)
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS search_logs (
            id INT AUTO_INCREMENT PRIMARY KEY,
            user_id INT,
            product_id INT,
            category VARCHAR(100),
            search_time DATETIME
        )""")

        cursor.execute("""CREATE TABLE IF NOT EXISTS support_sd (
            id INT AUTO_INCREMENT PRIMARY KEY,
            username VARCHAR(255),
            email VARCHAR(255)
        )""")

        db.commit()
        cursor.close()
        db.close()
        return "✅ All tables created successfully!"

    except Exception as e:
        return f"❌ Error: {str(e)}"
#-------------backup database-----------------
@app.route("/import-backup")
def import_backup():
    try:
        import os
        db = get_db_connection()
        cursor = db.cursor()
        
        with open("backup.sql", "r", encoding="utf-8") as f:
            sql = f.read()
        
        for statement in sql.split(";"):
            statement = statement.strip()
            if statement:
                try:
                    cursor.execute(statement)
                except Exception as e:
                    print(f"Skipping: {e}")
        
        db.commit()
        cursor.close()
        db.close()
        return "✅ Backup imported successfully!"
    
    except Exception as e:
        return f"❌ Error: {str(e)}"
# ============================================================
# STATIC FILE SERVING
# ============================================================
@app.route('/static/videos/<path:filename>')
def serve_video(filename):
    print("👉 ROUTE HIT:", request.path)
    return send_from_directory('static/videos', filename, mimetype='video/mp4')


# ============================================================
# RUN
# ============================================================
if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port, debug=True)