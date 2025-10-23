INSERT INTO stud (id,name,age,department,grade) 
VALUES ('1','Alfred','23','physics','10'),
 ('2','Alfa','21','physics','70'),
  ('3','binu','19','chemistry','90'),
   ('4','rahul','18','computer science','79');
  SELECT * FROM stud 
 WHERE age >20;
  SELECT * FROM stud WHERE department IN ('computer science','physics');
  SELECT * FROM stud WHERE grade = 90;
  SELECT * FROM stud WHERE grade BETWEEN 70 AND 90;

  
  
  
