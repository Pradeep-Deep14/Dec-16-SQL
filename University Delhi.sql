CREATE TABLE universities (
         university_id INT PRIMARY KEY, 
         university_name VARCHAR(100), 
         location VARCHAR(100)
     );
     INSERT INTO universities VALUES 
         (1, 'Delhi University', 'Delhi'), 
         (2, 'Jawaharlal Nehru University', 'Delhi'), 
         (3, 'IIT Bombay', 'Mumbai');


SELECT * FROM UNIVERSITIES


/*
List all universities in India located in Delhi.
*/


SELECT UNIVERSITY_NAME
FROM UNIVERSITIES 
WHERE LOCATION ILIKE '%Delhi'