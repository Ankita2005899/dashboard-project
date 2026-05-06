<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
    <title>Availabilities Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            background: white;
        }
        th, td {
            border: 1px solid #999;
            padding: 8px;
            text-align: center;
        }
        th {
            background: #2c3e50;
            color: white;
        }
        tr:nth-child(even) {
            background: #f2f2f2;
        }
    </style>
</head>

<body>
<h2>Availabilities Data</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Product ID</th>
        <th>Name</th>
        <th>Category</th>
        <th>Cart Availability</th>
        <th>Dashboard Removed</th>
        <th>Dashboard Availability</th>
        <th>Add from VC</th>
        <th>Sub from VC</th>
        <th>Actual Availability</th>
        <th>Removed</th>
        <th>Add VC</th>
        <th>Sub VC</th>
        <th>Updated At</th>
    </tr>

    <xsl:for-each select="Availabilities_data/record">
    <tr>
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="product_id"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="category"/></td>
        <td><xsl:value-of select="cart_availability"/></td>
        <td><xsl:value-of select="dashboard_item_removed"/></td>
        <td><xsl:value-of select="dashboard_availability"/></td>
        <td><xsl:value-of select="addfrom_vc"/></td>
        <td><xsl:value-of select="subfrom_vc"/></td>
        <td><xsl:value-of select="actual_availability"/></td>
        <td><xsl:value-of select="removed"/></td>
        <td><xsl:value-of select="add_vc"/></td>
        <td><xsl:value-of select="sub_vc"/></td>
        <td><xsl:value-of select="updated_at"/></td>
    </tr>
    </xsl:for-each>

</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
