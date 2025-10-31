INSERT INTO products(product_id,product_name,price)
 VALUES(1,'soap',20),
 (2,'mobile',20000),
 (3,'oil',750)
 ALTER TABLE products
ADD category VARCHAR(75);
TRUNCATE TABLE products;
DROP DATABASE grocery_shop
