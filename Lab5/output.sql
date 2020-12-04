#1
 -> CREATE TABLE Class (
 ->     `id` INT PRIMARY KEY AUTO_INCREMENT,
 ->     `name` VARCHAR(50) );
Query OK, 0 rows affected (0.0582 sec)


#2

 -> INSERT INTO Class (`name`) VALUES ("DAVID"), ("LUCIE"), ("RICKIE");
Query OK, 3 rows affected (0.0073 sec)

Records: 3  Duplicates: 0  Warnings: 0


#3

 -> SELECT * FROM Class;
+----+--------+
| id | name   |
+----+--------+
|  1 | DAVID  |
|  2 | LUCIE  |
|  3 | RICKIE |
+----+--------+
3 rows in set (0.0005 sec)


#4

 -> START TRANSACTION;
Query OK, 0 rows affected (0.0009 sec)
 
 -> INSERT INTO Class (`name`) VALUES ("NEWMAN");
Query OK, 1 row affected (0.0009 sec)
 -> ROLLBACK;
Query OK, 0 rows affected (0.0026 sec)

-> SELECT * FROM Class;
+----+--------+
| id | name   |
+----+--------+
|  1 | DAVID  |
|  2 | LUCIE  |
|  3 | RICKIE |
+----+--------+
3 rows in set (0.0006 sec)

 -> INSERT INTO Class (`name`) VALUES ("NEWMAN");
Query OK, 1 row affected (0.0035 sec)
 -> COMMIT;
Query OK, 0 rows affected (0.0005 sec)

 -> START TRANSACTION;
Query OK, 0 rows affected (0.0005 sec)
-> SAVEPOINT BeforeEvilEra;
Query OK, 0 rows affected (0.0005 sec)

 -> SELECT * FROM Class;
+----+--------+
| id | name   |
+----+--------+
|  1 | DAVID  |
|  2 | LUCIE  |
|  3 | RICKIE |
|  5 | NEWMAN |
+----+--------+
4 rows in set (0.0006 sec)

 -> INSERT INTO Class (`name`) VALUES ("EVILERA");
Query OK, 1 row affected (0.0062 sec)

 -> SELECT * FROM Class;
+----+---------+
| id | name    |
+----+---------+
|  1 | DAVID   |
|  2 | LUCIE   |
|  3 | RICKIE  |
|  5 | NEWMAN  |
|  6 | EVILERA |
+----+---------+
5 rows in set (0.0005 sec)

 -> ROLLBACK TO BeforeEvilEra;
Query OK, 0 rows affected (0.0076 sec)
 
 -> SELECT * FROM Class;
+----+--------+
| id | name   |
+----+--------+
|  1 | DAVID  |
|  2 | LUCIE  |
|  3 | RICKIE |
|  5 | NEWMAN |
+----+--------+
4 rows in set (0.0069 sec)

-> COMMIT;
Query OK, 0 rows affected (0.0004 sec)
