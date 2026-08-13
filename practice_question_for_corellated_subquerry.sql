CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT NULL,
    hire_year INT
);

INSERT INTO employees
(emp_id, emp_name, department, salary, manager_id, hire_year)
VALUES
(101, 'Alice Johnson', 'IT', 72000, NULL, 2018),
(102, 'Bob Smith', 'IT', 65000, 101, 2019),
(103, 'Carol White', 'HR', 58000, NULL, 2017),
(104, 'David Brown', 'HR', 54000, 103, 2020),
(105, 'Eva Green', 'Finance', 80000, NULL, 2016),
(106, 'Frank Black', 'Finance', 75000, 105, 2018),
(107, 'Grace Lee', 'IT', 68000, 101, 2021),
(108, 'Henry Wilson', 'Marketing', 60000, NULL, 2017),
(109, 'Ivy Turner', 'Marketing', 56000, 108, 2022),
(110, 'Jack Davis', 'Finance', 70000, 105, 2019),
(111, 'Karen Moore', 'IT', 63000, 101, 2020),
(112, 'Leo Harris', 'HR', 50000, 103, 2021),
(113, 'Mia Clark', 'Marketing', 62000, 108, 2018),
(114, 'Nate Lewis', 'Finance', 78000, 105, 2019),
(115, 'Olivia Walker', 'IT', 71000, 101, 2017),
(116, 'Paul Hall', 'HR', 53000, 103, 2020),
(117, 'Quinn Young', 'Marketing', 59000, 108, 2021),
(118, 'Rachel King', 'Finance', 82000, 105, 2016),
(119, 'Sam Scott', 'IT', 66000, 101, 2022),
(120, 'Tina Adams', 'HR', 55000, 103, 2019);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    join_year INT
);

INSERT INTO customers
(customer_id, customer_name, city, country, join_year)
VALUES
(201, 'Aarav Mehta', 'Mumbai', 'India', 2021),
(202, 'Priya Sharma', 'Delhi', 'India', 2020),
(203, 'Rohan Gupta', 'Pune', 'India', 2022),
(204, 'Sunita Patel', 'Ahmedabad', 'India', 2021),
(205, 'Vikram Rao', 'Bangalore', 'India', 2019),
(206, 'Neha Singh', 'Chennai', 'India', 2023),
(207, 'Arjun Kumar', 'Hyderabad', 'India', 2020),
(208, 'Deepa Nair', 'Kochi', 'India', 2022),
(209, 'Sanjay Joshi', 'Jaipur', 'India', 2021),
(210, 'Meera Iyer', 'Coimbatore', 'India', 2023),
(211, 'Ravi Verma', 'Lucknow', 'India', 2020),
(212, 'Anita Das', 'Kolkata', 'India', 2019),
(213, 'Kiran Reddy', 'Vizag', 'India', 2022),
(214, 'Pooja Shah', 'Surat', 'India', 2021),
(215, 'Amit Bose', 'Nagpur', 'India', 2023),
(216, 'Tara Menon', 'Trivandrum', 'India', 2020),
(217, 'Nikhil Kulkarni', 'Nashik', 'India', 2022),
(218, 'Swati Chatterjee', 'Bhopal', 'India', 2019),
(219, 'Rahul Pandey', 'Patna', 'India', 2021),
(220, 'Divya Tiwari', 'Indore', 'India', 2023);


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_qty INT
);

INSERT INTO products
(product_id, product_name, category, price, stock_qty)
VALUES
(301, 'Laptop', 'Electronics', 55000, 30),
(302, 'Smartphone', 'Electronics', 22000, 80),
(303, 'Headphones', 'Electronics', 3500, 120),
(304, 'Monitor', 'Electronics', 18000, 45),
(305, 'Keyboard', 'Accessories', 1500, 200),
(306, 'Mouse', 'Accessories', 900, 250),
(307, 'Desk Chair', 'Furniture', 8500, 40),
(308, 'Standing Desk', 'Furniture', 22000, 15),
(309, 'Webcam', 'Electronics', 4200, 70),
(310, 'USB Hub', 'Accessories', 1200, 180),
(311, 'Notebook', 'Stationery', 150, 500),
(312, 'Pen Set', 'Stationery', 250, 600),
(313, 'Printer', 'Electronics', 12000, 25),
(314, 'Scanner', 'Electronics', 9000, 20),
(315, 'External SSD', 'Electronics', 7500, 60),
(316, 'Lamp', 'Furniture', 2200, 90),
(317, 'Whiteboard', 'Office Supplies', 3800, 35),
(318, 'Cable Organiser', 'Accessories', 600, 300),
(319, 'Power Bank', 'Electronics', 2800, 100),
(320, 'Smart Watch', 'Electronics', 15000, 55);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    status VARCHAR(20),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

INSERT INTO orders
(order_id, customer_id, product_id, amount, order_date, status)
VALUES
(1001, 201, 301, 1500, '2024-01-05', 'Delivered'),
(1002, 202, 302, 2300, '2024-01-12', 'Delivered'),
(1003, 203, 303, 800, '2024-02-03', 'Delivered'),
(1004, 201, 304, 3200, '2024-02-14', 'Delivered'),
(1005, 204, 301, 1100, '2024-03-01', 'Pending'),
(1006, 205, 302, 4500, '2024-03-15', 'Delivered'),
(1007, 202, 303, 950, '2024-03-22', 'Cancelled'),
(1008, 206, 304, 2100, '2024-04-05', 'Delivered'),
(1009, 203, 301, 1750, '2024-04-18', 'Pending'),
(1010, 207, 302, 3300, '2024-04-30', 'Delivered'),
(1011, 204, 303, 680, '2024-05-10', 'Cancelled'),
(1012, 208, 304, 2900, '2024-05-22', 'Delivered'),
(1013, 205, 301, 1200, '2024-06-08', 'Delivered'),
(1014, 201, 302, 2700, '2024-06-15', 'Pending'),
(1015, 209, 303, 500, '2024-06-28', 'Delivered'),
(1016, 206, 304, 3800, '2024-07-07', 'Delivered'),
(1017, 207, 301, 1600, '2024-07-19', 'Delivered'),
(1018, 210, 302, 4100, '2024-07-25', 'Delivered'),
(1019, 208, 303, 720, '2024-08-02', 'Cancelled'),
(1020, 209, 304, 2200, '2024-08-14', 'Delivered');

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    budget DECIMAL(12,2),
    location VARCHAR(50),
    head_id INT
);

INSERT INTO departments
(dept_id, dept_name, budget, location, head_id)
VALUES
(1, 'IT', 500000, 'Bangalore', 101),
(2, 'HR', 200000, 'Mumbai', 103),
(3, 'Finance', 600000, 'Delhi', 105),
(4, 'Marketing', 300000, 'Chennai', 108);


-- select emp_name , department , salary , avg(salary)over(partition by department) > salary from employees;


-- select emp_name , department , salary from employees where salary > (
--   select avg(salary) from employees
-- );

-- select customer_id, customer_name , city from customers where customer_id not in(
--   select distinct customer_id from orders 
-- ) order by customer_id;
-- select * from employees;


-- select * from departments where budget = ( select max(budget) from departments)


-- select customer_id , customer_name , city from customers where customer_id in  (
-- select customer_id from orders group by customer_id having count(customer_id) =1 )


-- select customer_id , customer_name , city from customers where customer_id in  (
-- select customer_id from orders group by customer_id having count(customer_id)  >= 2)

-- select * from products where price >(
-- select max(price)from products where category = 'Accessories') order by price desc;


-- SELECT order_id, customer_id, amount, order_date
-- FROM orders
-- WHERE customer_id IN (
--     SELECT customer_id
--     FROM customers
--     WHERE join_year = 2021
-- )
-- ORDER BY order_date;



-- select emp_id , emp_name , department from employees  as e1 where EXISTS ( 
--   select emp_id from employees as e where e.manager_id = e1.emp_id )

-- select emp_id , emp_name , department from employees  as e1 where not EXISTS ( 
--   select emp_id from employees as e where e.manager_id = e1.emp_id )






-- select customer_id , customer_name , city from customers as c
-- where customer_id in (
--   select customer_id from orders as o where o.customer_id = c.customer_id
-- ) ;



-- select customer_id , customer_name , city from customers as c
-- where not EXISTS (
--   select customer_id from orders as o where o.customer_id = c.customer_id
-- ) ;

-- select product_id , product_name , category from products as p 
-- where EXISTS (
--   select 1 from orders as o where o.product_id = p.product_id
-- )



-- select emp_name , department , salary from employees as e where department in (
-- select department from employees where emp_id = 105) and emp_id<>105 order by salary desc ;


-- select order_id , order_date , amount  , order_date from orders 
-- where order_date =(
--   select max(order_date) from orders
-- -- )

--  29
-- select emp_name , department , salary from employees where salary > (
-- select max(salary) from employees where department = 'HR') order by salary desc;

-- 30
-- select order_id , customer_id , amount , status from orders 
-- where status = 'Delivered' and  amount > (
--   select avg(amount) from orders
-- where status = 'Delivered') order by amount desc; 

-- 31
-- select emp_name , department , salary , avg(salary) over(partition by department) as dept_avg
-- from employees as e1
-- where salary  > (
--   select avg(salary) from employees as e where e.department = e1.department 
-- ) order by salary desc;

-- 32

-- select emp_name , department ,salary , row_number() over(partition by department order by salary desc)
-- from employees;

-- 33

-- SELECT c.customer_id,
--        c.customer_name,
--        (
--            SELECT SUM(o.amount)
--            FROM orders o
--            WHERE o.customer_id = c.customer_id
--        ) AS total_spend
-- FROM customers c
-- WHERE (
--     SELECT SUM(o.amount)
--     FROM orders o
--     WHERE o.customer_id = c.customer_id
-- ) > (
--     SELECT AVG(total_spend)
--     FROM (
--         SELECT customer_id, SUM(amount) AS total_spend
--         FROM orders
--         GROUP BY customer_id
--     ) AS customer_totals
-- )
-- ORDER BY total_spend DESC;



-- 34

-- select emp_name , department , salary 
-- from employees 
-- where department in (
--   select department from employees
--   group by department 
--   having avg(salary) > 65000 
-- ) order by salary desc;


-- 35   not done 

-- select order_id , customer_id , amount , avg(amount) over() , 
-- case 
-- when 



-- 36
-- select *  from (
-- select * , avg(price) over(partition by category)  as r from products) as t
--  where t.price > t.r;


-- 37
-- select emp_name , department , salary from employees where salary >any (
-- select min(salary) from employees where department = 'Marketing') order by salary desc;


-- 38 

-- select emp_name , department , salary from employees where salary <(
-- select min(salary) from employees where department = 'Finance')
-- order by salary desc;


-- 39

-- select customer_id , customer_name from customers 
-- where  EXISTS(
--   select 1 from orders where orders.customer_id = customers.customer_id
-- )
-- and not EXISTS(
--   select 1 from orders 
--   where orders.customer_id = customers.customer_id
--   and status <> 'Delivered'
-- )
-- order by customer_id


-- 40 // not done 

-- select product_id , product_name , from(
--   select 
-- )


-- 41
-- SELECT emp_name, department, salary
-- FROM employees
-- WHERE salary = (
--     SELECT MAX(salary)
--     FROM employees
--     WHERE salary < (
--         SELECT MAX(salary)
--         FROM employees
--     ));


-- 42

select distinct department from employees as e 
where not EXISTS (
    select min(salary) over(partition by department) from employees
    having min(salary) >= 500000);
