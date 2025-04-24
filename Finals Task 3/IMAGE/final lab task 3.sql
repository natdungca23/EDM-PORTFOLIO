CREATE DATABASE productdb;
DROP DATABASE productdb;
USE productdb;
SHOW DATABASES;

CREATE TABLE products_tbl (
product_id INT(3) PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
price DECIMAL(10,2) 
);

DESCRIBE products_tbl;

ALTER TABLE products_tbl
ADD CONSTRAINT chck_price_positive CHECK(price > 0);

INSERT INTO products_tbl (product_name, price) VALUES
('Laptop', 999.99),
('Smartphone', 599.99),
('Tablet', 299.99),
('Keyboard', 19.99),
('Mouse', 14.99),
('Desk Lamp', 24.99),
('Speakers', 9.99);

ALTER TABLE products_tbl
MODIFY product_name VARCHAR(120) NOT NULL;


