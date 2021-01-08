 #1

 CREATE TABLE Employee(
        code CHAR(4) PRIMARY KEY,
        name VARCHAR(60),
        dob DATE,
        designation VARCHAR(80),
        salary FLOAT
        );

 INSERT INTO Employee(code, name, dob, designation, salary)
 VALUES
        ('COD1','Harry','2000-02-02','CTO',190000.78),
        ('COD2','Elizabeth','2000-01-12','CEO',185000.78),
        ('COD3','Wilson','1998-08-02','Clerk',59000.78),
        ('COD4','Mathew','1969-04-20','Auditor',59000.18);


 #2

 SELECT * FROM Employee ORDER BY name DESC;
+------+-----------+------------+-------------+---------+
| code | name      | dob        | designation | salary  |
+------+-----------+------------+-------------+---------+
| COD3 | Wilson    | 1998-08-02 | Clerk       | 59000.8 |
| COD4 | Mathew    | 1969-04-20 | Auditor     | 59000.2 |
| COD1 | Harry     | 2000-02-02 | CTO         |  190001 |
| COD2 | Elizabeth | 2000-01-12 | CEO         |  185001 |
+------+-----------+------------+-------------+---------+


 #3

 CREATE TABLE Deposit(
                 baccno BIGINT,
                 branch_name VARCHAR(60),
                 amount FLOAT
                 );


 INSERT INTO Deposit(baccno, branch_name, amount)
 VALUES
        (1990001,'manipuzha',290000.25),
        (1990002,'palakkad',291233.22),
        (1990003,'karunagapally',123570.1),
        (1990004,'palakkad',2239083.78),
(       1990005,'kavumbhagom',100090.90);


 #4

 SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;

+---------------+---------------+----------------+
| branch_name   | COUNT(baccno) | SUM(amount)    |
+---------------+---------------+----------------+
| manipuzha     |             1 |      290000.25 |
| palakkad      |             2 |  2530316.96875 |
| karunagapally |             1 | 123570.1015625 |
| kavumbhagom   |             1 | 100090.8984375 |
+---------------+---------------+----------------+

