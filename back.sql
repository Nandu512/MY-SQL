
CREATE TABLE Employee(
    id int NOT NULL  AUTO_INCREMENT,
    Name varchar (20) NOT NULL,
    Department varchar (20) NOT NULL,
    `Leave` int(4) NOT NULL,
    PRIMARY KEY(id));

INSERT INTO employee(Name,Department,`Leave`)
VALUES ('Raju','Sales',1),
       ('Sangeetha','Sales',3),
       ('Vinay','Operations',8),
       ('Abey','Packing',2),
       ('Thomas','Packing',1),
       ('Muneer','Operations',7),
       ('Aparna','Sales',3),
       ('Abid','Operations',9),
       ('Fathima','Sales',11),
       ('Varghese','Operations',14);

CREATE TABLE Exam(
    id  int(4) NOT NULL,
    Employee_id int(4),
    exam_status varchar(10)
    );

INSERT INTO exam
VALUES(1,2,'Pass'),
      (2,5,'Fail'),
      (3,1,'Fail'),
      (4,8,'Pass'),
      (5,3,'Pass'),
      (6,1,'Pass'),
      (7,6,'Fail'),
      (8,9,'Pass'),
      (9,10,'Pass');

      SELECT Name FROM employee
WHERE `Leave` > 5 AND Department = 'Sales'

SELECT COUNT(Name) FROM employee
WHERE Department = 'Operations'

SELECT  COUNT(*),
Department FROM employee
GROUP BY Department

SELECT Department FROM employee
GROUP BY Department
HAVING SUM(`Leave`) > 10;

SELECT employee.Name , exam.exam_status 
FROM employee
INNER JOIN
exam
ON employee.id = exam.Employee_id
WHERE exam_status = 'Pass'

SELECT employee.Name FROM employee
LEFT JOIN
exam
ON employee.id = exam.Employee_id
WHERE exam.exam_status IS NULL