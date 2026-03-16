-- how we can create database?
-- create database name_database

CREATE DATABASE sc10;

-- want to see all databases (show databases)

-- drop database NAME_OF_DATABASE (if you want to delete database)

DROP database SCHOOL;

CREATE DATABASE IF NOT EXISTS SC10;


SHOW databases;


USE SC10;

-- CREATE A TABLE 

CREATE TABLE if not exists STUDENTS(
ROLL_NO INT,
NAME VARCHAR(100),
AGE INT,
GRADE CHAR(10),
MARKS INT
);

desc STUDENTS;


-- data insert 

insert into STUDENTS(roll_no,name,age,grade,marks) values(1,'ankit',23,'A',87),
(2,'ashish',22,'B',76),
(3,'piyush',20,'C',66),
(4,'deepika',22,'D',56),
(5,'rizwan',22,'F',44);


-- read data

select * from students;


select * from students where marks > 50;








