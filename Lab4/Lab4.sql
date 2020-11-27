#1

CREATE TABLE Department(
        Code INT PRIMARY KEY,
        Title VARCHAR(30),
        Dept_name VARCHAR(30) UNIQUE,
        Dept_id INT,
        Salary INT,
        CHECK (salary > 2000) );

INSERT INTO Department 
VALUES (312, "HOD", "Computer Science", 100, 20000);


SELECT * FROM Department;

#2

CREATE TABLE Instructor(
        Name VARCHAR(50) NOT NULL,
        Code INT,
        Id INT PRIMARY KEY DEFAULT 0 );

INSERT INTO Instructor(name, code)
VALUES ("Harry", 012);


SELECT * FROM Instructor;
