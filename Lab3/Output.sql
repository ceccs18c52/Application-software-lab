 MySQL  localhost:33060+ ssl  lab  SQL > #1
Query OK, 0 rows affected (0.0006 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > CREATE TABLE employee (
                                      ->        empid CHAR(4) ,
                                      ->        name CHAR(10) not null,
                                      ->        designation CHAR(30) not null,
                                      ->        dob date not null,
                                      ->        salary numeric );
Query OK, 0 rows affected (0.0458 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > CREATE TABLE employdetails (
                                      ->        gender char(1),
                                      ->        nationality char(10),
                                      ->        gno int,
                                      ->        primary key (gno),
                                      ->        empid char(4) references employee(empid) );
Query OK, 0 rows affected (0.0385 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > INSERT INTO employee VALUES
                                      ->        ("e1", "Berlin", "Secretary", "1974-09-17", "50000"),
                                      ->        ("e2", "Roney", "Technician", "1980-03-24", "35000"),
                                      ->        ("e3", "Vicky", "Staff", "1987-10-23", "20000");
Query OK, 3 rows affected (0.0076 sec)

Records: 3  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > INSERT INTO employdetails VALUES
                                      ->        ("M", "Indian", "27", "e2"),
                                      ->        ("M", "Indian", "56", "e3");
Query OK, 2 rows affected (0.0045 sec)

Records: 2  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT * FROM employee ;
+-------+--------+-------------+------------+--------+
| empid | name   | designation | dob        | salary |
+-------+--------+-------------+------------+--------+
| e1    | Berlin | Secretary   | 1974-09-17 |  50000 |
| e2    | Roney  | Technician  | 1980-03-24 |  35000 |
| e3    | Vicky  | Staff       | 1987-10-23 |  20000 |
+-------+--------+-------------+------------+--------+
3 rows in set (0.0003 sec)
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT * FROM employdetails ;
+--------+-------------+-----+-------+
| gender | nationality | gno | empid |
+--------+-------------+-----+-------+
| M      | Indian      |  27 | e2    |
| M      | Indian      |  56 | e3    |
+--------+-------------+-----+-------+
2 rows in set (0.0003 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > #2
Query OK, 0 rows affected (0.0005 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT * FROM employee WHERE empid IN (SELECT empid FROM employdetails);
+-------+-------+-------------+------------+--------+
| empid | name  | designation | dob        | salary |
+-------+-------+-------------+------------+--------+
| e2    | Roney | Technician  | 1980-03-24 |  35000 |
| e3    | Vicky | Staff       | 1987-10-23 |  20000 |
+-------+-------+-------------+------------+--------+
2 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > #3
Query OK, 0 rows affected (0.0007 sec)
 MySQL  localhost:33060+ ssl  lab  SQL >
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT * FROM employee WHERE empid NOT IN (SELECT empid FROM employdetails);
+-------+--------+-------------+------------+--------+
| empid | name   | designation | dob        | salary |
+-------+--------+-------------+------------+--------+
| e1    | Berlin | Secretary   | 1974-09-17 |  50000 |
+-------+--------+-------------+------------+--------+
1 row in set (0.0007 sec)
