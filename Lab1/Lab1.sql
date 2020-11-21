#1
CREATE TABLE student (
	    sno INT AUTO_INCREMENT PRIMARY KEY,
	    name VARCHAR(50) NOT NULL,
	    marks INT NOT NULL,
	    dept VARCHAR(20) NOT NULL );


#2
ALTER TABLE student ADD COLUMN age INT NOT NULL;


#3
ALTER TABLE student MODIFY COLUMN dept VARCHAR(10); 


#4
ALTER TABLE student DROP COLUMN marks;


#5
RENAME TABLE student TO students;


#6
TRUNCATE TABLE students;


#7
DROP TABLE students;
