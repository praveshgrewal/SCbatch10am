CREATE DATABASE viewsdb;

use viewsdb;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

INSERT INTO Departments (dept_id, dept_name) VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Sales'),
(104, 'Finance');

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    age INT,
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Employees (emp_id, emp_name, age, salary, dept_id) VALUES
(1, 'Amit', 24, 40000, 101),
(2, 'Neha', 26, 60000, 102),
(3, 'Rahul', 28, 55000, 102),
(4, 'Priya', 25, 45000, 103),
(5, 'Karan', 30, 50000, 104),
(6, 'Sneha', 27, 70000, 102),
(7, 'Rohit', 29, 48000, 103),
(8, 'Anjali', 23, 42000, 101);

-- views


CREATE VIEW High_Salary_Employees AS
SELECT emp_name, salary
FROM Employees
WHERE salary > 50000;

select * from High_Salary_Employees;


show tables;

CREATE VIEW Employee_Basic_Info AS
SELECT emp_id, emp_name, age
FROM Employees;


select * from Employee_Basic_Info;

CREATE VIEW Employee_Department_View AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id;

select * from Employee_Department_View;

SHOW FULL TABLES IN viewsdb WHERE TABLE_TYPE = 'VIEW';


select * from Departments;

create view it_employee as 
select dept_name from Departments where dept_name = 'IT';


select  * from it_employee;


create view avg_salary as 
select name,salary from Employees;


select name,salary from avg_salary;



create view name_salary as 
select emp_name,salary from Employees;


select * from name_salary;
















