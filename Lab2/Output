 #1
 CREATE TABLE EMPLOYEE
 ( code CHAR(4),
   name VARCHAR(10),
   designation VARCHAR(30),
   dob DATE,
   salary  FLOAT);
Query OK, 0 rows affected (0.04 sec)


 #2
 INSERT INTO EMPLOYEE (code , name , designation , dob , salary)
 VALUES
     ('e1' ,'William' ,'Manager' ,'1986-06-08',55000),
     ('e2','James' ,'Asst Manager','1990-12-03',45500) ;
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0


 #3
 SELECT * FROM EMPLOYEE;
+------+---------+--------------+------------+--------+
| code | name    | designation  | dob        | salary |
+------+---------+--------------+------------+--------+
| e1   | William | Manager      | 1986-06-08 |  55000 |
| e2   | James   | Asst Manager | 1990-12-03 |  45500 |
+------+---------+--------------+------------+--------+
2 rows in set (0.00 sec)


 #4
UPDATE EMPLOYEE
  SET salary =60000 WHERE code ='e1';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0


 SELECT * FROM EMPLOYEE;
+------+---------+--------------+------------+--------+
| code | name    | designation  | dob        | salary |
+------+---------+--------------+------------+--------+
| e1   | William | Manager      | 1986-06-08 |  60000 |
| e2   | James   | Asst Manager | 1990-12-03 |  45500 |
+------+---------+--------------+------------+--------+
2 rows in set (0.00 sec)


 #5
 DELETE FROM EMPLOYEE where code='e2';
Query OK, 1 row affected (0.00 sec)


 SELECT * FROM EMPLOYEE;
+------+---------+-------------+------------+--------+
| code | name    | designation | dob        | salary |
+------+---------+-------------+------------+--------+
| e1   | William | Manager     | 1986-06-08 |  60000 |
+------+---------+-------------+------------+--------+
1 row in set (0.00 sec)
