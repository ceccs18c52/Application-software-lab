#1
CREATE TABLE EMPLOYEE
( code CHAR(4),
  name VARCHAR(10),
  designation VARCHAR(30),
  dob DATE,
  salary  FLOAT);


#2
INSERT INTO EMPLOYEE (code , name , designation , dob , salary)
VALUES
    ('e1' ,'William' ,'Manager' ,'1986-06-08',55000),
    ('e2','James' ,'Asst Manager','1990-12-03',45500) ;
       
#3
SELECT * FROM EMPLOYEE;

#4
UPDATE EMPLOYEE
SET salary =60000 WHERE code ='e1';

SELECT * FROM EMPLOYEE;

#5
DELETE FROM EMPLOYEE where code='e2';

SELECT * FROM EMPLOYEE;
