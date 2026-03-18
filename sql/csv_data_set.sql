use sc10;

select * from sales_data;

-- select units sold,  unit price ,units sold * unit price as total_sales 
-- from sales_data; 

select * from students;


SELECT name,  sum(marks) AS total_marks
FROM students
GROUP BY name;


CREATE TABLE orders (
    Order_ID INT,
    Customer VARCHAR(10),
    City VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price INT
);

INSERT INTO orders VALUES
(1, 'A', 'Delhi', 'Electronics', 2, 500),
(2, 'B', 'Mumbai', 'Clothing', 5, 200),
(3, 'C', 'Delhi', 'Electronics', 1, 500),
(4, 'D', 'Chennai', 'Furniture', 3, 1000),
(5, 'E', 'Mumbai', 'Clothing', 2, 200),
(6, 'F', 'Delhi', 'Furniture', 1, 1000),
(7, 'G', 'Chennai', 'Electronics', 4, 500),
(8, 'H', 'Delhi', 'Clothing', 6, 200),
(9, 'I', 'Mumbai', 'Electronics', 2, 500),
(10, 'J', 'Chennai', 'Furniture', 2, 1000);

SELECT Category,  max(Quantity) AS total_Quantity
FROM Orders
GROUP BY Category;


