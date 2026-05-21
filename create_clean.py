import re

# Only essential tables
essential = [
    'user', 'card', 'food_items', 'study_material', 
    'product_availability', 'product_availability_sql',
    'store_data', 'cart_summary', 'save_detail',
    'strong_password', 'search_logs', 'user_activity',
    'support_sd', 'addtocart_logs',
    '1anu_32', 'a23_48', 'a_52', 'a_52_product_activity',
    'aakanshaa_13', 'aanil_43', 'anu_29', 'awe_49',
    'babu_22', 'bag_33', 'bottle_34', 'butter_51',
    'cart', 'close_39', 'dft_61', 'farana_24',
    'fula_25', 'full_26', 'habki_35', 'hand_45',
    'helio_36', 'hey_41', 'hi_42', 'mug_44',
    'oop_56', 'payal_37', 'pen_46', 'road_50',
    'sakshi_1', 'sample', 'samundar_31', 'sdf_59',
    'see34_58', 'shree_23', 'sky_30', 'star_28',
    'store_data_backup', 'sun_38', 'taneya_21',
    'umesh_15', 'uncle_40', 'up_54', 'user_1',
    'user_activity', 'user_template', 'vc_product_availability',
    'water_47', 'we2_57', 'x_27'
]

with open('backup.sql', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix compatibility issues
content = re.sub(r'DELIMITER ;;\n.*?DELIMITER ;\n', '', content, flags=re.DOTALL)
content = re.sub('DEFINER=.[^@]+.@.[^. ]+.', '', content)
content = content.replace('utf8mb4_0900_ai_ci', 'utf8mb4_general_ci')
content = content.replace('ON UPDATE CURRENT_TIMESTAMP', '')
content = content.replace('datetime DEFAULT CURRENT_TIMESTAMP', 'datetime NULL DEFAULT NULL')
content = content.replace('datetime NOT NULL DEFAULT CURRENT_TIMESTAMP', 'datetime NULL DEFAULT NULL')
content = re.sub(r'DEFAULT \(curdate\(\)\)', 'NULL DEFAULT NULL', content)

# Extract only essential tables
result = []
for table in essential:
    pattern = rf'DROP TABLE.*?`{table}`.*?UNLOCK TABLES;'
    match = re.search(pattern, content, re.DOTALL)
    if match:
        result.append(match.group())
        print(f'Found: {table}')
    else:
        print(f'Missing: {table}')

with open('backup_clean.sql', 'w', encoding='utf-8') as f:
    f.write('\n\n'.join(result))

print('Done! backup_clean.sql created')