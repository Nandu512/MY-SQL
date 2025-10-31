INSERT into authors(author_id,name,country)
VALUES(1,'APJ','India'),
(2,'ljp','spain'),
(3,'messi','argentina');
INSERT INTO books(book_id,title,price)
VALUES(1,'my world',600),
(2,'physics',1600),
(3,'history',2600);
ALTER TABLE books
ADD published_year int(45)
TRUNCATE TABLE books;
DROP DATABASE bookstoredb

