CREATE DATABASE exam
Use exam
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    `leave` INT
);
INSERT INTO Employee (id, name, department, `leave`) VALUES
(1, 'Raju', 'Sales', 1),
(2, 'Sangeetha', 'Sales', 3),
(3, 'Vinay', 'Operations', 8),
(4, 'Abey', 'Packing', 2),
(5, 'Thomas', 'Packing', 1),
(6,'Muneer','Operations',7),
(7,'Aparna','Sales',3),
(8,'Abid','Operations',9),
(9,'Fathima','Sales',11),
(10,'Varghese','Operations',14);

CREATE TABLE Exam (
    id INT PRIMARY KEY,
    employee_id INT,
    exam_status VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);
INSERT INTO Exam (id, employee_id, exam_status) 
VALUES
(1, 2, 'Pass'),
(2, 5, 'Fail'),
(3, 1, 'Fail'),
(4, 8, 'Pass'),
(5, 3, 'Pass'),
(6, 1, 'Pass'),
(7, 6, 'Fail'),
(8, 9, 'Pass'),
(9, 10, 'Pass');
SELECT name
FROM Employee
WHERE department = 'Sales' AND `leave` > 5;

SELECT COUNT(*) FROM employee
WHERE department='Operations';

SELECT department,COUNT(*)
FROM employee 
GROUP BY department;

SELECT department, SUM(`leave`) 
FROM Employee
GROUP BY department
HAVING SUM(`leave`) > 10;
 

SELECT employee.name,exam.exam_status
FROM employee
INNER JOIN
exam
on employee.id=exam.employee_id
WHERE exam_status='Pass';


SELECT name
FROM employee
WHERE id NOT IN(SELECT employee_id FROM exam)

