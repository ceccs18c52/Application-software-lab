#1

CREATE TABLE employee ( 
       empid CHAR(4) ,
       name CHAR(10) not null, 
       designation CHAR(30) not null,
       dob date not null,
       salary numeric );
 
CREATE TABLE employdetails (
       gender char(1),
       nationality char(10),
       gno int,
       primary key (gno),
       empid char(4) references employee(empid) );

INSERT INTO employee VALUES 
       ("e1", "Berlin", "Secretary", "1974-09-17", "50000"),
       ("e2", "Roney", "Technician", "1980-03-24", "35000"),
       ("e3", "Vicky", "Staff", "1987-10-23", "20000");

INSERT INTO employdetails VALUES 
       ("M", "Indian", "27", "e2"),
       ("M", "Indian", "56", "e3");

SELECT * FROM employee ;
SELECT * FROM employdetails ;


#2

SELECT * FROM employee WHERE empid IN (SELECT empid FROM employdetails);


#3

SELECT * FROM employee WHERE empid NOT IN (SELECT empid FROM employdetails);
