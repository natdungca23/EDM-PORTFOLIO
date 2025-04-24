# Finals Lab Task 3: Table Manipulation
- In this task, I created a table for storing products in MySQL. The table should have product names and prices. Make sure prices are always greater than 0. Then, add some sample products (only the valid ones), and finally increase the length allowed for product names.
## Task 1: Create the products Table
- Make a table named products with these columns:
1. id: Auto-increment number (primary key)
2. product_name: Text up to 100 characters, not null
3. price: Decimal number

### SCREENSHOTS OF QUERY STATEMENT AND TABLE 

![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/b6de2cff1e336366b1c110b59575e11033ffb724/Finals%20Task%203/IMAGE/product1.png)

![image_alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/b6de2cff1e336366b1c110b59575e11033ffb724/Finals%20Task%203/IMAGE/product%20table%201.png)

## Task 2: Add a Price Check
- Make sure the price must be greater than 0.

### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/b6de2cff1e336366b1c110b59575e11033ffb724/Finals%20Task%203/IMAGE/product2.png)

## Task 3: Insert Products (Valid Only)
- Add these 10 products, but skip the ones with negative prices.
* Valid Products: Laptop (999.99), Smartphone (599.99), Tablet (299.99), Keyboard (19.99), Mouse (14.99), Desk Lamp (24.99), and Speakers (9.99). 

### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/b6de2cff1e336366b1c110b59575e11033ffb724/Finals%20Task%203/IMAGE/product3.png)

## Task 4: Update Name Length
- Change product_name to allow up to 120 characters.

### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/b6de2cff1e336366b1c110b59575e11033ffb724/Finals%20Task%203/IMAGE/product4.png)

### ER DIAGRAM
![image_alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/b6de2cff1e336366b1c110b59575e11033ffb724/Finals%20Task%203/IMAGE/erd-product.png)

## HERE IS THE COPY OF MY MYSQL.SCRIPT
![mysql_link](https://github.com/natdungca23/EDM-PORTFOLIO/blob/d4e7fcd9071a5967bab29145763d9659236a8814/Finals%20Task%203/IMAGE/final%20lab%20task%203.sql)
