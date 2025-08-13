Microsoft Windows [Version 10.0.26100.3775]
(c) Microsoft Corporation. All rights reserved.

C:\Program Files\MySQL\MySQL Server 8.0>mysql -h localhost -u root -p
Enter password: **************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.


mysql> SHOW DATABASES
    -> ;
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
8 rows in set (0.00 sec)

mysql>  create database stu_info;
Query OK, 1 row affected (0.04 sec)

mysql>  use stu_info;
Database changed
mysql> create table student(enno int primary key,name varchar(50),class varchar(10),address varchar(100));
Query OK, 0 rows affected (0.07 sec)

mysql> create table course(
    -> courseid int primary key,
    -> course_name varchar(10),
    -> credit int);
Query OK, 0 rows affected (0.03 sec)

mysql> create table enrollments(
    -> eno int,
    -> courseid int,
    -> eid int primary key,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 4
mysql> create table enrollments(
    -> eid int primary key,
    -> eno int,
    -> courseid int,
    -> year int ,
    -> foreign key(eno)references student(enno),
    -> foreign key (courseid)references course(courseid));
Query OK, 0 rows affected (0.13 sec)

mysql> create view stu_view as select enno, name from student;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from stud_view;
ERROR 1146 (42S02): Table 'stu_info.stud_view' doesn't exist
mysql> insert into stu_view(enno,name)VALUES
    -> (101,'rahul');
Query OK, 1 row affected (0.04 sec)

mysql> desc student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| enno    | int          | NO   | PRI | NULL    |       |
| name    | varchar(50)  | YES  |     | NULL    |       |
| class   | varchar(10)  | YES  |     | NULL    |       |
| address | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

mysql> desc stu_view;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| enno  | int         | NO   |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> update stu_view set name ='kishor' where ennp=101;
ERROR 1054 (42S22): Unknown column 'ennp' in 'where clause'
mysql> update stu_view set name ='kishor' where enno=101;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> delete from stu_view where enno=101;
Query OK, 1 row affected (0.04 sec)

mysql> create view env as select s.name,c.course_name,e.year from student s join enrollments e on s.enno=e.eno join course c on c.courseid=e.courseid;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from env;
Empty set (0.00 sec)

mysql> desc student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| enno    | int          | NO   | PRI | NULL    |       |
| name    | varchar(50)  | YES  |     | NULL    |       |
| class   | varchar(10)  | YES  |     | NULL    |       |
| address | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc env'
    '> ;
    '> ';
Empty set (0.04 sec)

mysql> desc env;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| name        | varchar(50) | YES  |     | NULL    |       |
| course_name | varchar(10) | YES  |     | NULL    |       |
| year        | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> update env set year = 1996 where name='rahul and course_name='dtabase';
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'dtabase';
'' at line 1
mysql> update env set year = 1996 where name='rahul and course_name='database';
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database';
'' at line 1
mysql> update env set year = 1996 where name='rahul' and course_name = 'database';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update env where name='rahul' and course_name = 'database';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where name='rahul' and course_name = 'database'' at line 1
mysql>
mysql> desc env;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| name        | varchar(50) | YES  |     | NULL    |       |
| course_name | varchar(10) | YES  |     | NULL    |       |
| year        | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>