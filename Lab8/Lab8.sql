#1
CREATE TABLE Employee  (    
 	code CHAR(6) PRIMARY KEY,    
 	name VARCHAR(80),  
  	dob date,    
 	designation VARCHAR(100),  
 	salary FLOAT );

#2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('STP','Musafir','1989-09-15','Senior Technical Professional',75000.00),
('DIR','Laxman','1992-05-23','Director',100000.00),
('GM','Lokesh','1985-11-29','General Manager',150000.00),
('CLRK1','Wade','2000-04-14','Clerk', 20000.00),
('CLRK2','Melvin','2000-10-30','Clerk', 20000.00);

#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#4
SELECT MAX(salary) FROM Employee;

#5
SELECT AVG(salary) FROM Employee;

#6
SELECT MIN(salary) FROM Employee;

#7
SELECT COUNT(*) FROM Employee;