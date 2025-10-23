INSERT INTO clglib (id, , title, author, price,genre) 
VALUES ('1','The Great Gatsby','Dan Brown','1200','Science'),
('2','Theory','Dan Brown','1200','History'),
('3','The wings of fire','APJ','1000','Biography'),
('4','The Great Khali','khali','120','Biography'),
('5','The Minnal Murali','Basil','200','Science');
 SELECT * FROM clglib 
WHERE price > 400 ;
SELECT * FROM clglib
WHERE genre IN ('Science','History','fiction');
SELECT * FROM clglib
WHERE title='The Great Gatsby';
SELECT * FROM clglib
WHERE author <> 'Dan Brown';