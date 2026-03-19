use sc10;

select * from orders;


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

desc Departments;

-- Insert Data into Departments (10 rows)
INSERT INTO Departments VALUES
(1, 'HR', 'Delhi'),
(2, 'Finance', 'Mumbai'),
(3, 'IT', 'Bangalore'),
(4, 'Marketing', 'Chennai'),
(5, 'Sales', 'Pune'),
(6, 'Operations', 'Hyderabad'),
(7, 'Legal', 'Kolkata'),
(8, 'Admin', 'Delhi'),
(9, 'R&D', 'Bangalore'),
(10, 'Support', 'Noida');


select * from Departments;


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    age INT,
    salary DECIMAL(10,2),
    department_id INT,
    
    -- Foreign Key Constraint
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

desc employees;

INSERT INTO Employees VALUES
(101, 'Amit Sharma', 28, 45000, 1),
(102, 'Neha Verma', 32, 55000, 2),
(103, 'Rahul Singh', 26, 60000, 3),
(104, 'Priya Mehta', 29, 48000, 4),
(105, 'Karan Patel', 35, 70000, 5),
(106, 'Sneha Reddy', 30, 65000, 6),
(107, 'Vikas Gupta', 40, 80000, 7),
(108, 'Anjali Kapoor', 27, 47000, 8),
(109, 'Rohit Jain', 31, 72000, 9),
(110, 'Pooja Das', 25, 40000, 10);


SELECT Employees.employee_name, Employees.age,Employees.salary,Departments.department_name,Departments.location
FROM Departments  
INNER JOIN Employees
ON Employees.department_id = Departments.department_id;

-- update 

UPDATE Employees
SET department_id = 1
WHERE employee_id = 103;

UPDATE Employees
SET department_id = 3
WHERE employee_id = 107;


select * from employees;

UPDATE Employees
SET department_id = 4
WHERE employee_id = 109;

SELECT Employees.employee_name, Employees.age,Employees.salary,Departments.department_name,Departments.location
FROM Employees 
INNER JOIN Departments
ON Employees.department_id = Departments.department_id;


SELECT e.employee_name, d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id;

-- avoid this
select *
from Employees
natural join Departments;






