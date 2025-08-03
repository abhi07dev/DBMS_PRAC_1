Microsoft Windows [Version 10.0.26100.3775]
(c) Microsoft Corporation. All rights reserved.

C:\Program Files\MySQL>mysql -h loclahost -u root -p
Enter password: **************
ERROR 2005 (HY000): Unknown MySQL server host 'loclahost' (11001)

C:\Program Files\MySQL>mysql -h localhost -u root -p
Enter password: **************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| student            |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> desc student;
ERROR 1046 (3D000): No database selected
mysql> USE student;
Database changed
mysql> create table student(Rollno int PRIMARY KEY, name varchar(40), course varchar(40), fees int);
Query OK, 0 rows affected (0.16 sec)

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Rollno | int         | NO   | PRI | NULL    |       |
| name   | varchar(40) | YES  |     | NULL    |       |
| course | varchar(40) | YES  |     | NULL    |       |
| fees   | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> aleter alter table student
    -> modify COLUMN name varchar(40) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'aleter alter table student
modify COLUMN name varchar(40) NOT NULL' at line 1
mysql> alter table student
    -> modify COLUMN name varchar(40) NOT NULL;
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table student
    -> modify COLUMN course varchar(40) NOT NULL;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table student
    -> modify COLUMN fees varchar(40) NOT NULL;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Rollno | int         | NO   | PRI | NULL    |       |
| name   | varchar(40) | NO   |     | NULL    |       |
| course | varchar(40) | NO   |     | NULL    |       |
| fees   | varchar(40) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter tsble student
    -> modify COLUMN fees int NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tsble student
modify COLUMN fees int NOT NULL' at line 1
mysql> alter table student
    -> modify COLUMN fees varchar(40) NOT NULL;
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Rollno | int         | NO   | PRI | NULL    |       |
| name   | varchar(40) | NO   |     | NULL    |       |
| course | varchar(40) | NO   |     | NULL    |       |
| fees   | varchar(40) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table student
    -> modify COLUMN fees int(40) NOT NULL;
Query OK, 0 rows affected, 1 warning (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Rollno | int         | NO   | PRI | NULL    |       |
| name   | varchar(40) | NO   |     | NULL    |       |
| course | varchar(40) | NO   |     | NULL    |       |
| fees   | int         | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT into student(Rollno, name, course, class, fess) VALUES
    -> (101, 'rahul','comp','S.E',17050);
ERROR 1054 (42S22): Unknown column 'class' in 'field list'
mysql> alter table student
    -> modify COLUMN class varchar(5) NOT NULL;
ERROR 1054 (42S22): Unknown column 'class' in 'student'
mysql> alter table student
    -> ADD COLUMN class varchar(5) NOT NULL;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table student
    -> modify COLUMN class varchar(5) NOT NULL;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc stuent;
ERROR 1146 (42S02): Table 'student.stuent' doesn't exist
mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Rollno | int         | NO   | PRI | NULL    |       |
| name   | varchar(40) | NO   |     | NULL    |       |
| course | varchar(40) | NO   |     | NULL    |       |
| fees   | int         | NO   |     | NULL    |       |
| class  | varchar(5)  | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT into student(Rollno, name, course, class, fess) VALUES
    -> (101, 'rahul','comp','S.E',17050);
ERROR 1054 (42S22): Unknown column 'fess' in 'field list'
mysql> INSERT into student(Rollno, name, course, class, fees) VALUES
    -> (101, 'rahul','comp','S.E',17050);
Query OK, 1 row affected (0.04 sec)

mysql> INSERT into student(Rollno, name, course, class, fess) VALUES
    -> (102, 'pratik', 'AIDS', 'T.E', 50390);
ERROR 1054 (42S22): Unknown column 'fess' in 'field list'
mysql> INSERT into student(Rollno, name, course, class, fees) VALUES
    -> (102, 'pratik', 'AIDS', 'T.E', 50390);
Query OK, 1 row affected (0.04 sec)

mysql>
mysql> INSERT into student(Rollno, name, course, class, fees) VALUES
    -> (102, 'pratik', 'AIML', 'F.E', 50000);
ERROR 1062 (23000): Duplicate entry '102' for key 'student.PRIMARY'
mysql> (103, 'Vivek', 'AIML', 'F.E', 50000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '103, 'Vivek', 'AIML', 'F.E', 50000)' at line 1
mysql> INSERT into student(Rollno, name, course, class, fees) VALUES
    -> (103, 'Vivek', 'AIML', 'F.E', 50000);
Query OK, 1 row affected (0.04 sec)

mysql> INSERT into student(Rollno, name, course, class, fees) VALUES
    -> (104, 'Vaibhav', 'COMP', 'T.E', 88340);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into student(Rollno, name, course, class, fees) VALUES
    -> (105, 'Akshai', 'COMP', 'B.E', 88340);
Query OK, 1 row affected (0.01 sec)

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Rollno | int         | NO   | PRI | NULL    |       |
| name   | varchar(40) | NO   |     | NULL    |       |
| course | varchar(40) | NO   |     | NULL    |       |
| fees   | int         | NO   |     | NULL    |       |
| class  | varchar(5)  | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> update student set fees = fees + 1100;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> update student set fees = fees + 1100 where = 'B.E';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '= 'B.E'' at line 1
mysql> update student set fees = fees + 1100 where class = 'B.E';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT fees + 1100 from student where class = 'B.E';
+-------------+
| fees + 1100 |
+-------------+
|       91640 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT * from student where name = 'pratik';
+--------+--------+--------+-------+-------+
| Rollno | name   | course | fees  | class |
+--------+--------+--------+-------+-------+
|    102 | pratik | AIDS   | 51490 | T.E   |
+--------+--------+--------+-------+-------+
1 row in set (0.00 sec)

mysql> SELECT * from student where course NOT in ('AIML');
+--------+---------+--------+-------+-------+
| Rollno | name    | course | fees  | class |
+--------+---------+--------+-------+-------+
|    101 | rahul   | comp   | 18150 | S.E   |
|    102 | pratik  | AIDS   | 51490 | T.E   |
|    104 | Vaibhav | COMP   | 89440 | T.E   |
|    105 | Akshai  | COMP   | 90540 | B.E   |
+--------+---------+--------+-------+-------+
4 rows in set (0.00 sec)

mysql> SELECT * from student order by name;
+--------+---------+--------+-------+-------+
| Rollno | name    | course | fees  | class |
+--------+---------+--------+-------+-------+
|    105 | Akshai  | COMP   | 90540 | B.E   |
|    102 | pratik  | AIDS   | 51490 | T.E   |
|    101 | rahul   | comp   | 18150 | S.E   |
|    104 | Vaibhav | COMP   | 89440 | T.E   |
|    103 | Vivek   | AIML   | 51100 | F.E   |
+--------+---------+--------+-------+-------+
5 rows in set (0.00 sec)

mysql> create index pqr on student(name, couse);
ERROR 1072 (42000): Key column 'couse' doesn't exist in table
mysql> create index pqr on student(name, course);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> aleter student drop index xyz;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'aleter student drop index xyz' at line 1
mysql> alter student drop index xyz;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student drop index xyz' at line 1
mysql> alter table student drop index xyz;
ERROR 1091 (42000): Can't DROP 'xyz'; check that column/key exists
mysql> alter table student drop index xyz;
ERROR 1091 (42000): Can't DROP 'xyz'; check that column/key exists
mysql>
mysql> alter table student DROP index xyz;
ERROR 1091 (42000): Can't DROP 'xyz'; check that column/key exists
mysql>
mysql> UPDATE student set name = 'Vivek' where Rollno = 103;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> select * from student;
+--------+---------+--------+-------+-------+
| Rollno | name    | course | fees  | class |
+--------+---------+--------+-------+-------+
|    101 | rahul   | comp   | 18150 | S.E   |
|    102 | pratik  | AIDS   | 51490 | T.E   |
|    103 | Vivek   | AIML   | 51100 | F.E   |
|    104 | Vaibhav | COMP   | 89440 | T.E   |
|    105 | Akshai  | COMP   | 90540 | B.E   |
+--------+---------+--------+-------+-------+
5 rows in set (0.00 sec)

mysql> create unique index abc on student(name);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show index from abc on student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on student' at line 1
mysql> show index from student;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| student |          0 | PRIMARY  |            1 | Rollno      | A         |           4 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| student |          0 | abc      |            1 | name        | A         |           5 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| student |          1 | pqr      |            1 | name        | A         |           5 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| student |          1 | pqr      |            2 | course      | A         |           5 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
4 rows in set (0.01 sec)

mysql>