INSERT INTO book(id,title,author,price,stock)
VALUES (1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);
SELECT title FROM book
WHERE price<450 AND stock>30
UPDATE book
SET stock=45,price=420
WHERE title='Deep Work'
DELETE FROM book
WHERE title='Ikigai'
SELECT AVG(price)
FROM book
SELECT*FROM book
ORDER BY price DESC
LIMIT 3