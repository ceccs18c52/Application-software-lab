 MySQL  localhost:33060+ ssl  lab  SQL > #1
Query OK, 0 rows affected (0.0006 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > CREATE TABLE Department(
                                      ->         Code INT PRIMARY KEY,
                                      ->         Title VARCHAR(30),
                                      ->         Dept_name VARCHAR(30) UNIQUE,
                                      ->         Dept_id INT,
                                      ->         Salary INT,
                                      ->         CHECK (salary > 2000) );
Query OK, 0 rows affected (0.0684 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > INSERT INTO Department
                                      -> VALUES (312, "HOD", "Computer Science", 100, 20000);
Query OK, 1 row affected (0.0067 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT * FROM Department;
+------+-------+------------------+---------+--------+
| Code | Title | Dept_name        | Dept_id | Salary |
+------+-------+------------------+---------+--------+
|  312 | HOD   | Computer Science |     100 |  20000 |
+------+-------+------------------+---------+--------+
1 row in set (0.0007 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > #2
Query OK, 0 rows affected (0.0007 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > CREATE TABLE Instructor(
                                      ->         Name VARCHAR(50) NOT NULL,
                                      ->         Code INT,
                                      ->         Id INT PRIMARY KEY DEFAULT 0 );
Query OK, 0 rows affected (0.0561 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > INSERT INTO Instructor(name, code)
                                      -> VALUES ("Harry", 012);
Query OK, 1 row affected (0.0046 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT * FROM Instructor;
+-------+------+----+
| Name  | Code | Id |
+-------+------+----+
| Harry |   12 |  0 |
+-------+------+----+
1 row in set (0.0005 sec)
