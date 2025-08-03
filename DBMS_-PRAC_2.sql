Microsoft Windows [Version 10.0.26100.3775]
(c) Microsoft Corporation. All rights reserved.

C:\Program Files\MySQL\MySQL Server 8.0>mysql -h localhost -u root -p
Enter password: **************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use office;
Database changed
mysql> CREATE TABLE enrollment(
    -> enrollment_id INT PRIMARY KEY,
    ->  student_id INT,
    -> course_id INT,
    -> FOREIGN KEY(student_id) REFERENCES students(student_id),
    -> FOREIGN KEY(course_id) REFERENCES courses(course_id)
    ->  );
ERROR 1824 (HY000): Failed to open the referenced table 'students'
mysql> \c
mysql> use office;
Database changed
mysql> SELECT ABS(-45b=); --Result: 45
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
    ->
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Result: 45' at line 1
mysql> SELECT ABS(-45); --Result: 45
+----------+
| ABS(-45) |
+----------+
|       45 |
+----------+
1 row in set (0.01 sec)

    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Result: 45' at line 1
mysql> SELECT CEIL(4.9),FLOOR(6.5);
+-----------+------------+
| CEIL(4.9) | FLOOR(6.5) |
+-----------+------------+
|         5 |          6 |
+-----------+------------+
1 row in set (0.00 sec)

mysql> SELECT 10 DIV 3;
+----------+
| 10 DIV 3 |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT 15 % 6;
+--------+
| 15 % 6 |
+--------+
|      3 |
+--------+
1 row in set (0.00 sec)

mysql> SELECT ROUND(123.4567, 2);
+--------------------+
| ROUND(123.4567, 2) |
+--------------------+
|             123.46 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT ROUND(19736.008263, 7);
+------------------------+
| ROUND(19736.008263, 7) |
+------------------------+
|           19736.008263 |
+------------------------+
1 row in set (0.00 sec)

mysql> SELECT CONCAT('schOOl','02838');
+--------------------------+
| CONCAT('schOOl','02838') |
+--------------------------+
| schOOl02838              |
+--------------------------+
1 row in set (0.00 sec)

mysql> SELECT REAPEATE('SCHooL','3');
ERROR 1305 (42000): FUNCTION office.REAPEATE does not exist
mysql> SELECT REPEATE('SCHooL','3');
ERROR 1305 (42000): FUNCTION office.REPEATE does not exist
mysql> SELECT REPEAT('SCHooL','3');
+----------------------+
| REPEAT('SCHooL','3') |
+----------------------+
| SCHooLSCHooLSCHooL   |
+----------------------+
1 row in set (0.03 sec)

mysql> SELECT REVERSE('POKEMON');
+--------------------+
| REVERSE('POKEMON') |
+--------------------+
| NOMEKOP            |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT INSTR('RAHul','G');
+--------------------+
| INSTR('RAHul','G') |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT INSTR('RAHul','u');
+--------------------+
| INSTR('RAHul','u') |
+--------------------+
|                  4 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT INSTR('RAHul','U');
+--------------------+
| INSTR('RAHul','U') |
+--------------------+
|                  4 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT ELT(2,'NIGHT','SKY',shines');
    '> ;
    '> \c
    '> SELECT LPAD('SKY',5,'*');
    '> SOME text';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SKY',5,'*');
SOME text'' at line 4
mysql> SELECT ELT(2,'NIGHT','SKY','shines');
+-------------------------------+
| ELT(2,'NIGHT','SKY','shines') |
+-------------------------------+
| SKY                           |
+-------------------------------+
1 row in set (0.00 sec)

mysql> SELECT LPAD('NIGHTsky', 5, '*');
+--------------------------+
| LPAD('NIGHTsky', 5, '*') |
+--------------------------+
| NIGHT                    |
+--------------------------+
1 row in set (0.00 sec)

mysql> SELECT LPAD('skyburnbright', 10, '*');
+--------------------------------+
| LPAD('skyburnbright', 10, '*') |
+--------------------------------+
| skyburnbri                     |
+--------------------------------+
1 row in set (0.00 sec)

mysql> SELECT INSERT('niGHT',3,2,'SKy');
+---------------------------+
| INSERT('niGHT',3,2,'SKy') |
+---------------------------+
| niSKyT                    |
+---------------------------+
1 row in set (0.00 sec)

mysql> SELECT LEFT('CHERRYbloSsome',6);
+--------------------------+
| LEFT('CHERRYbloSsome',6) |
+--------------------------+
| CHERRY                   |
+--------------------------+
1 row in set (0.00 sec)

mysql> SELECT power(4,2);
+------------+
| power(4,2) |
+------------+
|         16 |
+------------+
1 row in set (0.00 sec)

mysql> select sqrt(211);
+-------------------+
| sqrt(211)         |
+-------------------+
| 14.52583904633395 |
+-------------------+
1 row in set (0.00 sec)

mysql> select concat('cherry',null,'blossom');
+---------------------------------+
| concat('cherry',null,'blossom') |
+---------------------------------+
| NULL                            |
+---------------------------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE emp(
    -> empid INT PRIMARY KEY,
    -> ename VARCHAR(17),
    -> salary DECIMAL(15,2),
    -> dept VARCHAR(17)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc emp;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| empid  | int           | NO   | PRI | NULL    |       |
| ename  | varchar(17)   | YES  |     | NULL    |       |
| salary | decimal(15,2) | YES  |     | NULL    |       |
| dept   | varchar(17)   | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> INSERT INTO (empid, ename, salary, dept)VALUES
    -> (1,'siddarth',509373.398, 'ceo');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(empid, ename, salary, dept)VALUES
(1,'siddarth',509373.398, 'ceo')' at line 1
mysql> INSERT INTO emp(empid, ename, salary, dept)VALUES
    -> (1,'siddarth',509373.398, 'ceo');
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> INSERT INTO (empid, ename, salary, dept)VALUES
    -> (1,'parth',34683, 'HR');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(empid, ename, salary, dept)VALUES
(1,'parth',34683, 'HR')' at line 1
mysql> INSERT INTO (empid, ename, salary, dept)VALUES
    -> (1,'parth',34683, 'HR')
    -> (1,'parth',34683, 'HR')
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(empid, ename, salary, dept)VALUES
(1,'parth',34683, 'HR')
(1,'parth',34683, 'HR' at line 1
mysql> INSERT INTO (empid, ename, salary, dept)VALUES
    -> (2,'parth',34683, 'HR')
    -> (3,'vivek',47930, 'IT')
    -> (4,'vaibhav',40000, 'sales')
    -> (4,'vaibhav',40000, 'sales')
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(empid, ename, salary, dept)VALUES
(2,'parth',34683, 'HR')
(3,'vivek',47930, 'IT' at line 1
mysql> INSERT INTO (empid, ename, salary, dept)VALUES
    -> (2,'parth',34683, 'HR'),
    -> (3,'vivek',47930, 'IT'),
    -> (4,'vaibhav',40000, 'sales'),
    -> (5,'kisor',425000, 'CFO');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(empid, ename, salary, dept)VALUES
(2,'parth',34683, 'HR'),
(3,'vivek',47930, 'I' at line 1
mysql> INSERT INTO (empid, ename, salary, dept)VALUES
    -> (2,'parth',34683, 'HR');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(empid, ename, salary, dept)VALUES
(2,'parth',34683, 'HR')' at line 1
mysql> INSERT INTO emp(empid, ename, salary, dept)VALUES
    -> (2,'parth',34683, 'HR'),
    -> (3,'vivek',47930, 'IT'),
    -> (4,'vaibhav',40000, 'sales'),
    -> (5,'kisor',425000, 'CFO');
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc emp;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| empid  | int           | NO   | PRI | NULL    |       |
| ename  | varchar(17)   | YES  |     | NULL    |       |
| salary | decimal(15,2) | YES  |     | NULL    |       |
| dept   | varchar(17)   | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM emp;
+-------+----------+-----------+-------+
| empid | ename    | salary    | dept  |
+-------+----------+-----------+-------+
|     1 | siddarth | 509373.40 | ceo   |
|     2 | parth    |  34683.00 | HR    |
|     3 | vivek    |  47930.00 | IT    |
|     4 | vaibhav  |  40000.00 | sales |
|     5 | kisor    | 425000.00 | CFO   |
+-------+----------+-----------+-------+
5 rows in set (0.00 sec)

mysql> SELECT COUNT(*) AS total_employees FROM emp;
+-----------------+
| total_employees |
+-----------------+
|               5 |
+-----------------+
1 row in set (0.04 sec)

mysql> SELECT SUM(salary) AS total_salary FROM emp;
+--------------+
| total_salary |
+--------------+
|   1056986.40 |
+--------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary) AS avg_salary FROM emp;
+---------------+
| avg_salary    |
+---------------+
| 211397.280000 |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(salary) AS min_salary FROM emp;
+------------+
| min_salary |
+------------+
|   34683.00 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(salary) AS max_salary FROM emp;
+------------+
| max_salary |
+------------+
|  509373.40 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT dept, COUNT(*) AS emp_count
    -> FROM emp
    -> GROUP BY dept;
+-------+-----------+
| dept  | emp_count |
+-------+-----------+
| ceo   |         1 |
| HR    |         1 |
| IT    |         1 |
| sales |         1 |
| CFO   |         1 |
+-------+-----------+
5 rows in set (0.03 sec)

mysql> SELECT dept, AVG(salary) AS avg_salary
    -> FROM emp
    -> GROUP BY dept
    -> HAVING AVG(salary)>75000;
+------+---------------+
| dept | avg_salary    |
+------+---------------+
| ceo  | 509373.400000 |
| CFO  | 425000.000000 |
+------+---------------+
2 rows in set (0.03 sec)

mysql> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2025-08-03 |
+------------+
1 row in set (0.03 sec)

mysql> SELECT CURYIME();
ERROR 1305 (42000): FUNCTION office.CURYIME does not exist
mysql> SELECT CURTIME();
+-----------+
| CURTIME() |
+-----------+
| 22:27:45  |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2025-08-03 22:27:57 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT ADD(CURDATE(), INTERVAL 10 DAY);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ADD(CURDATE(), INTERVAL 10 DAY)' at line 1
mysql> SELECT ADDDATE(CURDATE(), INTERVAL 10 DAY);
+-------------------------------------+
| ADDDATE(CURDATE(), INTERVAL 10 DAY) |
+-------------------------------------+
| 2025-08-13                          |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT LAST_DAY(CURDATE());
+---------------------+
| LAST_DAY(CURDATE()) |
+---------------------+
| 2025-08-31          |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT column1 FROM table1
    -> UNION
    -> SELECT COLUMN1 FROM table2;
ERROR 1146 (42S02): Table 'office.table1' doesn't exist
mysql>
mysql> CREATE TABLE us(
    -> id INT PRIMARY KEY,
    -> name VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO us VALUE(1,'cherry'),(2,'blossom'),(3,'in'),(4,'night');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT name FROM us
    -> UNION
    -> SELECT name FROM us;
+---------+
| name    |
+---------+
| cherry  |
| blossom |
| in      |
| night   |
+---------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE you(
    -> id INT PRIMARY KEY,
    -> name VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO us VALUE(1,'sky'),(2,'burns'),(3,'bright');
ERROR 1062 (23000): Duplicate entry '1' for key 'us.PRIMARY'
mysql> INSERT INTO us VALUE(7'sky'),(8,'burns'),(9,'bright'),(4,'night');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''sky'),(8,'burns'),(9,'bright'),(4,'night')' at line 1
mysql> INSERT INTO you VALUE(7'sky'),(8,'burns'),(9,'bright'),(4,'night');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''sky'),(8,'burns'),(9,'bright'),(4,'night')' at line 1
mysql> INSERT INTO you VALUE(7,'sky'),(8,'burns'),(9,'bright'),(4,'night');
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT name FROM us
    -> UNION
    -> SELECT name FROM you;
+---------+
| name    |
+---------+
| cherry  |
| blossom |
| in      |
| night   |
| sky     |
| burns   |
| bright  |
+---------+
7 rows in set (0.00 sec)

mysql> SELECT name FROM us
    -> WHERE name IN(SELECT name FROM you);
+-------+
| name  |
+-------+
| night |
+-------+
1 row in set (0.00 sec)

mysql>
