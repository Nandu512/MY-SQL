INSERT INTO bokstr (id,  title, author, price,stock_status,genre) 
VALUES ('1','The Great Gatsby','Dan Brown','1200','Instock','Science'),
('2','Theory','Dan Brown','1200','Instock','History'),
('3','The wings of fire','APJ','1000','Out of Stock','Biography'),
('4','The Great Khali','khali','120','Out of Stock','Biography'),
('5','The Minnal Murali','Basil','200','In Stock','Science');
SELECT DISTINCT genre FROM bokstr
SELECT * FROM bokstr
WHERE stock_status='In Stock' AND price<400
SELECT * FROM bokstr
WHERE stock_status='Out of Stock' OR price>700
SELECT title,price*1.10 AS price_with_gst
FROM bokstr;
SELECT title,price,stock_status FROM bokstr
ORDER BY price DESC;
