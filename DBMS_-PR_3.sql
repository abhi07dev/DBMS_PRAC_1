Microsoft Windows [Version 10.0.26100.3775]
(c) Microsoft Corporation. All rights reserved.

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -h localhost -u -p
ERROR 1045 (28000): Access denied for user '-p'@'localhost' (using password: NO)

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -h localhost -u root -p
Enter password: **************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databses;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databses' at line 1
mysql> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| clg_db             |
| enroll             |
| information_schema |
| mysql              |
| office             |
| performance_schema |
| student            |
| sys                |
+--------------------+
8 rows in set (0.08 sec)

mysql> USE clg_db;
Database changed
mysql> CREATE TABLE student(
    -> studenrt_id INT PRIMARY KEY,
    -> name VARCHAR(50),
    -> major VARCHAR(50),
    -> cgpa DECIMAL(3,2)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> CREATE TABLE enrollment(
    -> enrollment_id INT PRIMAARY KEY,
    -> STUDENT_id INT,
    -> course VARHAR (5),
    -> credits INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRIMAARY KEY,
STUDENT_id INT,
course VARHAR (5),
credits INT
)' at line 2
mysql> CREATE TABLE enrollment(
    -> enrollment_id INT PRIMARY KEY,
    -> studnet_id INT,
    -> course VARCHAR(50),
    -> grade VARCHAR(5),
    -> credits INT
    -> );
ERROR 1050 (42S01): Table 'enrollment' already exists
mysql> CREATE TABLE enrollment(
    -> enroll_id INT PRIMARY KEY,
    -> studnet_id INT,
    -> course VARCHAR(50),
    -> grade VARCHAR(5),
    -> credits INT
    -> );
ERROR 1050 (42S01): Table 'enrollment' already exists
mysql> CREATE TABLE enroll_ment(
    -> enroll_id INT PRIMARY KEY,
    -> studnet_id INT,
    -> course VARCHAR(50),
    -> grade VARCHAR(5),
    -> credits INT
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO student(studenrt_id,name, major,cgpa)VALUES
    -> (1,'ron','Biotech',4.1),
    -> (2,'jack','Chemistry,',3.7),
    -> (3,'Emma','Math II',3.2),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 4
mysql> INSERT INTO student(studenrt_id,name, major,cgpa)VALUES
    -> (1,'ron','Biotech',4.1),
    -> (2,'jack','Chemistry',3.7),
    -> (3,'Emma','Math II',3.2),
    -> (4,'Sadie','Computer science',4.2),
    -> (5,'Harry','Physcis',4.7);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO student(enroll_id, name, major,cgpa)VALUES
    -> (101,1,'Data analysis','A',2),
    -> (102,1,'Math III','B',3),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> INSERT INTO student(enroll_id, student_id, course, grade, credits)VALUES
    -> (101,1,'Data analysis','A',2),
    -> (102,1,'Math III','B',3),
    -> (103,3,'Software Engg','B+',3),
    -> (104,3,'Quantam Physcis','C-',4),
    -> (105,2,'Quantam mechanics','A+',3),
    -> (105,5,'Data sci','O',2),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 7
mysql> INSERT INTO student(enroll_id, student_id, course, grade, credits)VALUES
    -> (101,1,'Data analysis','A',2),
    -> (102,1,'Math III','B',3),
    -> (103,3,'Software Engg','B+',3),
    -> (104,3,'Quantam Physcis','C-',4),
    -> (105,2,'Quantam mechanics','A+',3),
    -> (106,5,'Data sci','O',2),
    -> (107,4,'Statistics','A+',3),
    -> (108,4,'Nanotech','A+',4);
ERROR 1054 (42S22): Unknown column 'enroll_id' in 'field list'
mysql> INSERT INTO enroll_ment(enroll_id, student_id, course, grade, credits)VALUES
    -> (101,1,'Data analysis','A',2),
    -> (102,1,'Math III','B',3),
    -> (103,3,'Software Engg','B+',3),
    -> (104,3,'Quantam Physcis','C-',4),
    -> (105,2,'Quantam mechanics','A+',3),
    -> (106,5,'Data sci','O',2),
    -> (107,4,'Statistics','A+',3),
    -> (108,4,'Nanotech','A+',4);
ERROR 1054 (42S22): Unknown column 'student_id' in 'field list'
mysql> INSERT INTO student(enroll_id, studnet_id, course, grade, credits)VALUES
    -> (101,1,'Data analysis','A',2),
    -> (102,1,'Math III','B',3),
    -> (103,3,'Software Engg','B+',3),
    -> (104,3,'Quantam Physcis','C-',4),
    -> (105,2,'Quantam mechanics','A+',3),
    -> (106,5,'Data sci','O',2),
    -> (107,4,'Statistics','A+',3),
    -> (108,4,'Nanotech','A+',4);
ERROR 1054 (42S22): Unknown column 'enroll_id' in 'field list'
mysql> INSERT INTO enroll_ment(enroll_id, studnet_id, course, grade, credits)VALUES
    -> (101,1,'Data analysis','A',2),
    -> (102,1,'Math III','B',3),
    -> (103,3,'Software Engg','B+',3),
    -> (104,3,'Quantam Physcis','C-',4),
    -> (105,2,'Quantam mechanics','A+',3),
    -> (106,5,'Data sci','O',2),
    -> (107,4,'Statistics','A+',3),
    -> (108,4,'Nanotech','A+',4);
Query OK, 8 rows affected (0.04 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> SELECT s.name. e.enroll_id, e.course, e.grade
    -> FROM student s
    -> INNER JOIN enroll_ment e ON s.studenrt_id =e.studnet_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.enroll_id, e.course, e.grade
FROM student s
INNER JOIN enroll_ment e ON s.stude' at line 1
mysql> SELECT s.name, e.enroll_id, e.course, e.grade
    -> FROM student s
    -> INNER JOIN enroll_ment e ON s.studenrt_id =e.studnet_id;
+-------+-----------+-------------------+-------+
| name  | enroll_id | course            | grade |
+-------+-----------+-------------------+-------+
| ron   |       101 | Data analysis     | A     |
| ron   |       102 | Math III          | B     |
| Emma  |       103 | Software Engg     | B+    |
| Emma  |       104 | Quantam Physcis   | C-    |
| jack  |       105 | Quantam mechanics | A+    |
| Harry |       106 | Data sci          | O     |
| Sadie |       107 | Statistics        | A+    |
| Sadie |       108 | Nanotech          | A+    |
+-------+-----------+-------------------+-------+
8 rows in set (0.03 sec)

mysql> SELECT s.name. e.enroll_id, e.course, e.grade
    -> FROM student s
    -> LEFT JOIN enroll_ment e ON s.studenrt_id =e.studnet_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.enroll_id, e.course, e.grade
FROM student s
LEFT JOIN enroll_ment e ON s.studen' at line 1
mysql> SELECT s.name, e.enroll_id, e.course, e.grade
    -> FROM student s
    -> INNER JOIN enroll_ment e ON s.studenrt_id =e.studnet_id;
+-------+-----------+-------------------+-------+
| name  | enroll_id | course            | grade |
+-------+-----------+-------------------+-------+
| ron   |       101 | Data analysis     | A     |
| ron   |       102 | Math III          | B     |
| Emma  |       103 | Software Engg     | B+    |
| Emma  |       104 | Quantam Physcis   | C-    |
| jack  |       105 | Quantam mechanics | A+    |
| Harry |       106 | Data sci          | O     |
| Sadie |       107 | Statistics        | A+    |
| Sadie |       108 | Nanotech          | A+    |
+-------+-----------+-------------------+-------+
8 rows in set (0.00 sec)

mysql> SELECT s.name, e.enroll_id, e.course, e.grade
    -> FROM student s
    -> LEFT JOIN enroll_ment e ON s.studenrt_id =e.studnet_id;
+-------+-----------+-------------------+-------+
| name  | enroll_id | course            | grade |
+-------+-----------+-------------------+-------+
| ron   |       102 | Math III          | B     |
| ron   |       101 | Data analysis     | A     |
| jack  |       105 | Quantam mechanics | A+    |
| Emma  |       104 | Quantam Physcis   | C-    |
| Emma  |       103 | Software Engg     | B+    |
| Sadie |       108 | Nanotech          | A+    |
| Sadie |       107 | Statistics        | A+    |
| Harry |       106 | Data sci          | O     |
+-------+-----------+-------------------+-------+
8 rows in set (0.03 sec)

mysql> SELECT s.name, e.enroll_id, e.course, e.grade
    -> FROM student s
    -> RIGHT JOIN enroll_ment e ON s.studenrt_id =e.studnet_id;
+-------+-----------+-------------------+-------+
| name  | enroll_id | course            | grade |
+-------+-----------+-------------------+-------+
| ron   |       101 | Data analysis     | A     |
| ron   |       102 | Math III          | B     |
| Emma  |       103 | Software Engg     | B+    |
| Emma  |       104 | Quantam Physcis   | C-    |
| jack  |       105 | Quantam mechanics | A+    |
| Harry |       106 | Data sci          | O     |
| Sadie |       107 | Statistics        | A+    |
| Sadie |       108 | Nanotech          | A+    |
+-------+-----------+-------------------+-------+
8 rows in set (0.00 sec)

mysql> SELECT s.studenrt_id, s.name, e.enroll_id, e.course, e.grade
    -> FROM student s
    -> LEFT JOIN enroll_ment e ON s.studenrt_id =e.studnet_id;
+-------------+-------+-----------+-------------------+-------+
| studenrt_id | name  | enroll_id | course            | grade |
+-------------+-------+-----------+-------------------+-------+
|           1 | ron   |       102 | Math III          | B     |
|           1 | ron   |       101 | Data analysis     | A     |
|           2 | jack  |       105 | Quantam mechanics | A+    |
|           3 | Emma  |       104 | Quantam Physcis   | C-    |
|           3 | Emma  |       103 | Software Engg     | B+    |
|           4 | Sadie |       108 | Nanotech          | A+    |
|           4 | Sadie |       107 | Statistics        | A+    |
|           5 | Harry |       106 | Data sci          | O     |
+-------------+-------+-----------+-------------------+-------+
8 rows in set (0.00 sec)

mysql> SELECT s.studenrt_id, s.name, e.enroll_id, e.course, e.grade
    -> FROM student s
    -> LEFT JOIN enroll_ment e ON s.studenrt_id =e.studnet_id
    ->
    -> UNION
    ->
    -> SELECT s.studenrt_id, s.name, e.enroll_id, e.course, e.grade
    -> FROM student s
    -> RIGHT JOIN enroll_ment e ON s.studenrt_id =e.studnet_id
    -> ;
+-------------+-------+-----------+-------------------+-------+
| studenrt_id | name  | enroll_id | course            | grade |
+-------------+-------+-----------+-------------------+-------+
|           1 | ron   |       102 | Math III          | B     |
|           1 | ron   |       101 | Data analysis     | A     |
|           2 | jack  |       105 | Quantam mechanics | A+    |
|           3 | Emma  |       104 | Quantam Physcis   | C-    |
|           3 | Emma  |       103 | Software Engg     | B+    |
|           4 | Sadie |       108 | Nanotech          | A+    |
|           4 | Sadie |       107 | Statistics        | A+    |
|           5 | Harry |       106 | Data sci          | O     |
+-------------+-------+-----------+-------------------+-------+
8 rows in set (0.03 sec)

mysql> SELECT
    ->     s.name,
    ->     s.major,
    ->     SUM(e.credits)AS total_credits,
    ->     ROUND(AVG(
    ->          CASE e.grade
    ->              WHEN 'A' THEN 4.0
    ->              WHEN 'B' THEN 3.5
    ->              WHEN 'C' THEN 3.2
    ->              WHEN 'C-' THEN 2.2
    ->              ELSE NULL
    ->           end
    ->          ),2) AS avg_gpa
    -> From student s
    -> LEFT JOIN enroll_ment e ON s.studenrt_id =e.studnet_id
    -> GROUP BY s.studenrt_id, s.name, s.major;
+-------+------------------+---------------+---------+
| name  | major            | total_credits | avg_gpa |
+-------+------------------+---------------+---------+
| ron   | Biotech          |             5 |    3.75 |
| jack  | Chemistry        |             3 |    NULL |
| Emma  | Math II          |             7 |    2.20 |
| Sadie | Computer science |             7 |    NULL |
| Harry | Physcis          |             2 |    NULL |
+-------+------------------+---------------+---------+
5 rows in set (0.04 sec)

mysql> SELECT * FROM studenrt
    -> WHERE cgpa > (
    -> SELECT cgpa FROM studenrt WHERE Name = 'ron'
    -> );
ERROR 1146 (42S02): Table 'clg_db.studenrt' doesn't exist
mysql> SELECT * FROM student
    -> WHERE cgpa > (
    -> SELECT cgpa FROM studenrt WHERE Name = 'ron'
    -> );
ERROR 1146 (42S02): Table 'clg_db.studenrt' doesn't exist
mysql> SELECT * FROM student
    -> WHERE cgpa > (
    -> SELECT cgpa FROM student WHERE Name = 'ron'
    -> );
+-------------+-------+------------------+------+
| studenrt_id | name  | major            | cgpa |
+-------------+-------+------------------+------+
|           4 | Sadie | Computer science | 4.20 |
|           5 | Harry | Physcis          | 4.70 |
+-------------+-------+------------------+------+
2 rows in set (0.03 sec)

mysql> SELECT course FROM enroll_ment
    -> WHERE studnet_id IN(
    -> SELECT student_id FROM studenrt WHERE major = 'Data sci'
    -> );
ERROR 1146 (42S02): Table 'clg_db.studenrt' doesn't exist
mysql> SELECT course FROM enroll_ment
    -> WHERE studnet_id IN(
    -> SELECT student_id FROM studenet WHERE major = 'Data sci'
    -> );
ERROR 1146 (42S02): Table 'clg_db.studenet' doesn't exist
mysql> SELECT course FROM enroll_ment
    -> WHERE studnet_id IN(
    -> SELECT student_id FROM student WHERE major = 'Data sci'
    -> );
ERROR 1054 (42S22): Unknown column 'student_id' in 'field list'
mysql> SELECT course FROM enroll_ment
    -> WHERE studnet_id IN(
    -> SELECT studenrt_id FROM student WHERE major = 'Data sci'
    -> );
Empty set (0.00 sec)

mysql> SELECT course FROM enroll_ment
    -> WHERE studnet_id IN(
    -> SELECT studenrt_id FROM student WHERE major = 'Computer Science'
    -> );
+------------+
| course     |
+------------+
| Statistics |
| Nanotech   |
+------------+
2 rows in set (0.00 sec)

mysql> SELECT course FROM enroll_ment
    -> WHERE studnet_id IN(
    -> SELECT studenrt_id FROM student
    -> WHERE cgpa = (SELECT MAX(cgpa)FROM student)
    -> );
+----------+
| course   |
+----------+
| Data sci |
+----------+
1 row in set (0.00 sec)

mysql> SELECT course FROM enroll_ment
    -> WHERE studnet_id = (
    -> SELECT studenrt_id FROM student
    -> WHERE cgpa = (SELECT MAX(cgpa)FROM student)
    -> );
+----------+
| course   |
+----------+
| Data sci |
+----------+
1 row in set (0.00 sec)

mysql> SELECT * FROM student
    -> WHERE studnet_id IN (
    -> SELECT studnet_id FROM enroll_ment
    -> GROUP BY student_id
    -> HAVING COUNT(*)>1
    -> );
ERROR 1054 (42S22): Unknown column 'studnet_id' in 'IN/ALL/ANY subquery'
mysql> SELECT * FROM student
    -> WHERE studenrt_id IN (
    -> SELECT studnet_id FROM enroll_ment
    -> GROUP BY studnet_id
    -> HAVING COUNT(*)>1
    -> );
+-------------+-------+------------------+------+
| studenrt_id | name  | major            | cgpa |
+-------------+-------+------------------+------+
|           1 | ron   | Biotech          | 4.10 |
|           3 | Emma  | Math II          | 3.20 |
|           4 | Sadie | Computer science | 4.20 |
+-------------+-------+------------------+------+
3 rows in set (0.03 sec)

mysql> SELECT * FROM student s
    -> WHERE EXISTS (
    -> SELECT 1 FROM enroll_ment e
    -> WHERE e.studnet_id = s.studenrt_id );
+-------------+-------+------------------+------+
| studenrt_id | name  | major            | cgpa |
+-------------+-------+------------------+------+
|           1 | ron   | Biotech          | 4.10 |
|           2 | jack  | Chemistry        | 3.70 |
|           3 | Emma  | Math II          | 3.20 |
|           4 | Sadie | Computer science | 4.20 |
|           5 | Harry | Physcis          | 4.70 |
+-------------+-------+------------------+------+
5 rows in set (0.00 sec)

mysql> SELECT name,
    -> (SELECT COUNT(*) FROM enroll_ment e WHERE e.studnet_id = s.studenrt_id) AS course _count
    -> FROM student s;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '_count
FROM student s' at line 2
mysql> SELECT name,
    -> (SELECT COUNT(*) FROM enroll_ment e WHERE e.studnet_id = s.studenrt_id) AS course_count
    -> FROM student s;
+-------+--------------+
| name  | course_count |
+-------+--------------+
| ron   |            2 |
| jack  |            1 |
| Emma  |            2 |
| Sadie |            2 |
| Harry |            1 |
+-------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM student s
    -> WHERE cgpa > (
    -> SELECT AVG(cgpa) FROM student
    -> WHERE major = s.major );
Empty set (0.00 sec)

mysql> SELECT * FROM student s
    -> WHERE (
    -> SELECT AVG(total_credits) FROM enroll_ment e WHERE e.studnet = s.studenrt_id) > (
    -> SELECT AVG(total_credits) FROM (
    -> SELECT studnet_id, SUM(credits) AS total_credits
    -> FROM enroll_ment
    -> GROUP BY studnet_id
    -> ) AS credit_totals
    -> );
ERROR 1054 (42S22): Unknown column 'total_credits' in 'field list'
mysql> SELECT * FROM student s
    -> WHERE (
    -> SELECT AVG(total_credits) FROM enroll_ment e WHERE e.studnet = s.studenrt_id) > (;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> SELECT * FROM student s
    -> WHERE (
    -> SELECT SUM(total_credits) FROM enroll_ment e WHERE e.studnet_id = s.studenrt_id) > (
    -> ) > ( ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') > (' at line 4
mysql> SELECT * FROM student s
    -> WHERE (
    -> SELECT SUM(credits) FROM enroll_ment e WHERE e.studnet_id = s.studenrt_id
    -> ) > (
    -> SELECT AVG(total_credits) FROM (
    -> SELECT studnet_id, SUM(credits) AS total_credits
    -> FROM enroll_ment
    -> GROUP BY studnet_id
    -> ) AS credit_totals
    -> );
+-------------+-------+------------------+------+
| studenrt_id | name  | major            | cgpa |
+-------------+-------+------------------+------+
|           1 | ron   | Biotech          | 4.10 |
|           3 | Emma  | Math II          | 3.20 |
|           4 | Sadie | Computer science | 4.20 |
+-------------+-------+------------------+------+
3 rows in set (0.03 sec)

mysql> SELECT * FROM student
    -> WHERE major = 'Computer Science'
    -> AND cgpa > (
    -> SELECT AVG(cgpa) FROM student
    -> );
+-------------+-------+------------------+------+
| studenrt_id | name  | major            | cgpa |
+-------------+-------+------------------+------+
|           4 | Sadie | Computer science | 4.20 |
+-------------+-------+------------------+------+
1 row in set (0.00 sec)

mysql>
