INSERT INTO bkstr(book_id,title,author,price,stock)
VALUES (1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);
UPDATE bkstr
SET price=price+50,stock=stock+2
WHERE title='Learn SQL'
UPDATE bkstr
SET stock=stock-2
where price>500
DELETE FROM bkstr
WHERE book_id=3 