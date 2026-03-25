-- window functions 

create database advsql;

use advsql;

CREATE TABLE Students (
    id INT,
    name VARCHAR(50),
    section VARCHAR(10),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Aman', 'A', 80),
(2, 'Riya', 'A', 90),
(3, 'Raj', 'B', 70),
(4, 'Simran', 'B', 85);


-- SUM() (Total Marks per Section)
SELECT name, section, marks,
       SUM(marks) OVER (PARTITION BY section) AS total_marks
FROM Students;


-- AVG() (Average)

-- SUM() (Total Marks per Section)
SELECT name, section, marks,
       avg(marks) OVER (PARTITION BY section) AS avg_marks
FROM Students;


SELECT name, section, marks,
       ROW_NUMBER() OVER (PARTITION BY section ORDER BY marks desc) AS ranks
FROM Students;

INSERT INTO Students VALUES
(5, 'Aman', 'A', 80);



SELECT name, marks,
       RANK() OVER (ORDER BY marks DESC),
       DENSE_RANK() OVER (ORDER BY marks DESC)
FROM Students;


select * from students;


SELECT name, marks,
       LAG(marks) OVER (ORDER BY marks) AS prev_marks
FROM Students;



SELECT name, marks,
       LEAD(marks) OVER (ORDER BY marks) AS next_marks
FROM Students;






