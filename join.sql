INSERT INTO bookk(book_id,title)
VALUES (1,'The Alchemist'),
       (2,'The Power of Now'),
       (3,'Think and Grow Rich'),
       (4,'Clean Code');
INSERT INTO borrowers(borrowers_id,name,book_id)
VALUES (101 ,' Alice ', 1),
       (102 ,' Bob ', 2),
       (103,'Charlie ',NULL);
SELECT bookk.title,borrowers.name
FROM bookk
INNER JOIN borrowers
ON  bookk.book_id=borrowers.book_id;
SELECT  borrowers.name , bookk.title
FROM borrowers
LEFT JOIN
bookk
ON borrowers.book_id=bookk.book_id
SELECT bookk.title
FROM bookk
LEFT JOIN
borrowers
ON bookk.book_id=borrowers.book_id
WHERE borrowers.book_id IS null;
SELECT borrowers.name ,bookk.title
FROM borrowers
LEFT JOIN
bookk
ON bookk.book_id=borrowers.book_id