 #a
 
 MySQL  localhost:33060+ ssl  lab  SQL > CREATE TABLE store(
                                      ->     order_no int primary key AUTO_INCREMENT,
                                      ->     code varchar(10) not null,
                                      ->     item varchar(30) not null,
                                      ->     quantity int default 0,
                                      ->     price float,
                                      ->     discount int default 0,
                                      ->     mrp float not null
                                      -> );
Query OK, 0 rows affected (0.0329 sec)

 #b

 MySQL  localhost:33060+ ssl  lab  SQL > INSERT INTO store(code,item,quantity,price,discount,mrp)
                                      -> VALUES
                                      -> ("a123", "Macbook Pro 13", 14, 100999.99, 2000, 120000),
                                      -> ("a420", "iPhone 12", 12, 90000, 1000, 119900),
                                      -> ("a123", "Airpods Pro", 10, 30000, 0, 59900);
Query OK, 3 rows affected (0.0070 sec)

Records: 3  Duplicates: 0  Warnings: 0

 #c

 MySQL  localhost:33060+ ssl  lab  SQL > SELECT * FROM store;
+----------+------+----------------+----------+--------+----------+--------+
| order_no | code | item           | quantity | price  | discount | mrp    |
+----------+------+----------------+----------+--------+----------+--------+
|        1 | a123 | Macbook Pro 13 |       14 | 101000 |     2000 | 120000 |
|        2 | a420 | iPhone 12      |       12 |  90000 |     1000 | 119900 |
|        3 | a123 | Airpods Pro    |       10 |  30000 |        0 |  59900 |
+----------+------+----------------+----------+--------+----------+--------+
3 rows in set (0.0005 sec)

 #d

 MySQL  localhost:33060+ ssl  lab  SQL > SELECT MOD(price,9) FROM store;
+--------------+
| MOD(price,9) |
+--------------+
|    1.9921875 |
|            0 |
|            3 |
+--------------+
3 rows in set (0.0004 sec)

 #e
 
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT price,POWER(price,2) FROM store;
+--------+--------------------+
| price  | POWER(price,2)     |
+--------+--------------------+
| 101000 | 10200998421.875061 |
|  90000 |         8100000000 |
|  30000 |          900000000 |
+--------+--------------------+
3 rows in set (0.0004 sec)

 #f
 
 MySQL  localhost:33060+ ssl  lab  SQL > SELECT ROUND(mrp DIV 7) FROM store;
+------------------+
| ROUND(mrp DIV 7) |
+------------------+
|            17142 |
|            17128 |
|             8557 |
+------------------+
3 rows in set (0.0006 sec)
 