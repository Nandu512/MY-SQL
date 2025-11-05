CREATE TABLE authors(
    author_id int NOT NULL,
    author_name VARCHAR (75) NOT NULL,
    email VARCHAR(75) NOT NULL,
    UNIQUE(email)
    );
    
    
create TABLE bk(
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY(author_id) REFERENCES authors(author_id)
    ON DELETE CASCADE
    );