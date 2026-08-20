CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
); 


INSERT INTO departments VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Sales', 'Jaipur'),
(5, 'Marketing', 'Bangalore'),
(6, 'Operations', 'Pune');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    manager_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    job_title VARCHAR(50),
    city VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(101, 'Rahul', 1, NULL, 85000, '2020-01-15', 'Manager', 'Delhi'),
(102, 'Amit', 1, 101, 65000, '2021-03-10', 'Developer', 'Delhi'),
(103, 'Priya', 1, 101, 72000, '2022-06-20', 'Developer', 'Noida'),
(104, 'Neha', 2, NULL, 78000, '2019-07-12', 'HR Manager', 'Mumbai'),
(105, 'Rohit', 2, 104, 55000, '2022-02-18', 'HR Executive', 'Mumbai'),
(106, 'Karan', 3, NULL, 95000, '2018-11-01', 'Finance Manager', 'Delhi'),
(107, 'Sneha', 3, 106, 70000, '2021-09-15', 'Accountant', 'Delhi'),
(108, 'Vikas', 4, NULL, 88000, '2019-04-10', 'Sales Manager', 'Jaipur'),
(109, 'Pooja', 4, 108, 60000, '2022-08-22', 'Sales Executive', 'Jaipur'),
(110, 'Arjun', 4, 108, 62000, '2023-01-05', 'Sales Executive', 'Ajmer'),
(111, 'Simran', 5, NULL, 82000, '2020-05-19', 'Marketing Manager', 'Bangalore'),
(112, 'Nikhil', 5, 111, 58000, '2023-03-14', 'Marketing Executive', 'Bangalore'),
(113, 'Manish', 6, NULL, 90000, '2018-08-25', 'Operations Manager', 'Pune'),
(114, 'Anjali', 6, 113, 64000, '2021-12-01', 'Operations Executive', 'Pune'),
(115, 'Ravi', 1, 101, 68000, '2023-07-10', 'Developer', 'Gurgaon');

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    registration_date DATE
);

INSERT INTO customers VALUES
(1, 'Aarav Sharma', 'aarav@gmail.com', 'Delhi', '2022-01-10'),
(2, 'Meera Singh', 'meera@gmail.com', 'Mumbai', '2022-03-15'),
(3, 'Rohan Gupta', 'rohan@gmail.com', 'Jaipur', '2022-05-20'),
(4, 'Isha Verma', 'isha@gmail.com', 'Delhi', '2023-01-12'),
(5, 'Aditya Jain', 'aditya@gmail.com', 'Pune', '2023-02-18'),
(6, 'Kavya Mehta', 'kavya@gmail.com', 'Bangalore', '2023-04-22'),
(7, 'Dev Patel', 'dev@gmail.com', 'Ahmedabad', '2023-06-10'),
(8, 'Ananya Rao', 'ananya@gmail.com', 'Hyderabad', '2023-08-15'),
(9, 'Varun Kumar', 'varun@gmail.com', 'Delhi', '2024-01-10'),
(10, 'Tanya Kapoor', 'tanya@gmail.com', 'Jaipur', '2024-02-20');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 75000, 20),
(2, 'Mobile', 'Electronics', 30000, 50),
(3, 'Keyboard', 'Accessories', 2000, 100),
(4, 'Mouse', 'Accessories', 1000, 150),
(5, 'Monitor', 'Electronics', 15000, 40),
(6, 'Desk', 'Furniture', 12000, 25),
(7, 'Chair', 'Furniture', 8000, 30),
(8, 'Headphones', 'Accessories', 5000, 80),
(9, 'Printer', 'Electronics', 18000, 15),
(10, 'Tablet', 'Electronics', 25000, 35);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001, 1, '2024-01-05', 'Completed'),
(1002, 2, '2024-01-10', 'Completed'),
(1003, 3, '2024-01-15', 'Pending'),
(1004, 1, '2024-02-01', 'Completed'),
(1005, 4, '2024-02-10', 'Cancelled'),
(1006, 5, '2024-02-15', 'Completed'),
(1007, 6, '2024-03-01', 'Completed'),
(1008, 7, '2024-03-05', 'Pending'),
(1009, 8, '2024-03-15', 'Completed'),
(1010, 9, '2024-04-01', 'Completed'),
(1011, 10, '2024-04-10', 'Completed'),
(1012, 2, '2024-04-20', 'Completed'),
(1013, 3, '2024-05-01', 'Pending'),
(1014, 5, '2024-05-10', 'Completed'),
(1015, 1, '2024-05-15', 'Completed');


CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1,1001,1,1,75000),
(2,1001,3,2,2000),
(3,1002,2,1,30000),
(4,1002,8,2,5000),
(5,1003,5,1,15000),
(6,1004,4,3,1000),
(7,1004,7,1,8000),
(8,1005,6,1,12000),
(9,1006,1,1,75000),
(10,1006,8,1,5000),
(11,1007,10,2,25000),
(12,1007,4,2,1000),
(13,1008,9,1,18000),
(14,1009,2,2,30000),
(15,1009,3,3,2000),
(16,1010,5,2,15000),
(17,1011,6,2,12000),
(18,1011,7,2,8000),
(19,1012,1,1,75000),
(20,1013,8,2,5000),
(21,1014,10,1,25000),
(22,1014,4,5,1000),
(23,1015,2,1,30000),
(24,1015,5,1,15000);

-- 1 
-- select * from employees;
-- 2
-- select emp_name , city , salary from employees;
-- 3
-- select * from employees where salary > 65000;
-- 4
-- select * from employees where salary = 70000;
-- 5
-- select * from employees where salary between 60000 and 80000;
-- 6
-- select * from employees where salary not between 60000 and 80000;
-- 7 
-- select * from employees where city = 'delhi';
-- 8 
-- select * from employees where city in( 'delhi' , 'Jaipur');
-- 8 
-- select * from employees where city = 'delhi' and salary > 65000;
-- 9 
-- select * from products where category  ='Electronics';
-- 10 
-- select * from products where category in('Electronics' , 'Furniture');
-- 11
-- select * from employees where city in('delhi' ,'Mumbai' ,'Jaipur');
-- 12
-- select * from employees where job_title = 'Developer';
-- 13
-- select * from employees where job_title != 'it';
-- 14
-- select * from customers where city like 'd%';
-- 15 
-- select * from employees where emp_name like  '_____';
-- 16 
-- select * from employees order by salary desc;
-- 17 
-- select  * from employees order by  job_title, salary desc;
-- 18 
-- select * from employees order by salary desc limit 5;
-- 19  
-- select distinct(job_title) , city from employees;
-- 20 
-- select count(quantity) from order_items;
-- 21
-- select avg(unit_price) from order_items;
-- 22
-- select count(*) , job_title  from employees group by job_title;
-- 23
-- select avg(salary) , job_title from employees group by job_title;
-- 24
-- select sum(salary) , job_title from employees group by job_title;
-- select sum(salary) from employees where job_title = 'Manager';
-- 25
-- select count(*) , city from employees group by city;
-- 26  
-- select city , avg(salary) from employees group by city;
-- 27 
-- select count(*) , category from products group by category;
-- 28 
-- select min(price) , category from products group by category;
-- 29 
-- select count(*) , category from products group by category;
-- 30 
-- select count(*) , city  from customers group by city;
-- 31
-- select count(*) , order_id from order_items group by order_id;
-- 32
-- select count(*) , status from orders  group by status;
-- 33
-- SELECT 
--     p.product_name,
--     SUM(oi.quantity) AS total_quantity_sold
-- FROM products p
-- JOIN order_items oi
--     ON p.product_id = oi.product_id
-- GROUP BY p.product_id, p.product_name;
-- 34
-- select p.product_name, sum(p.price) from products as p join order_items as o on p.product_id = o.product_id
-- group by p.product_name ,p.price;
-- 35
-- select o.order_id , count(c.quantity) from orders as o join order_items as c
-- on o.order_id = c.order_id group by o.order_id , c.quantity ;

-- -- 36
-- select d.dept_name , count(c.emp_id) from departments as d join employees as c 
-- on d.dept_id = c.dept_id group by dept_name having count(c.emp_id) > 2;

-- 37 
-- select d.dept_name , avg(e.salary) from departments as d join employees as e 
-- on d.dept_id =  e.dept_id group by d.dept_name having avg(e.salary) > 70000;

-- 38
-- select d.dept_name , max(e.salary) from departments as d join employees as e 
-- on d.dept_id =  e.dept_id group by d.dept_name having max(e.salary) > 90000;

-- 39 
-- select count(e.emp_id) ,  d.location from departments as d join employees as e 
-- on d.dept_id =  e.dept_id group by d.location having count(e.emp_id) > 1;

-- 40 
-- select  p.category  , count(q.quantity) from products as p join order_items  as q 
-- on p.product_id = q.product_id GROUP by p.category having count(q.quantity) >  2;

-- 41
-- select d.dept_name  , e.emp_name from departments as d join employees as e 
-- on d.dept_id = e.dept_id;

-- -- 42 
-- select e.emp_name ,  e.salary ,  d.dept_name from employees as e join departments as d 
-- on e.dept_id = d.dept_id;
-- 43
-- select e.emp_name , d.dept_name from employees as e join departments as d 
-- on e.dept_id = d.dept_id
-- where d.location ='delhi';

-- 44
-- select e.emp_name , m.emp_name from employees as e join employees  as m 
-- on e.manager_id = m.emp_id;

-- 45
-- select c.customer_name , o.order_id from customers as c join orders as o 
-- on c.customer_id = o.customer_id;\

-- 46
-- select c.customer_name , o.order_date , o.status from customers as c join orders as o 
-- on c.customer_id = o.customer_id;
-- 47 
-- select o.order_id ,  p.product_name from order_items as o join products as p on o.product_id = p.product_id;

-- 48 
-- select o.order_id , p.product_name , o.quantity from order_items as o join products as p 
-- on o.product_id = p.product_id;
-- 49 
-- select c.customer_name , p.product_name , q.quantity from customers as c join orders as ord
-- on c.customer_id =  ord.customer_id join order_items as q on ord.order_id = q.order_id
-- join products as p on q.product_id = p.product_id;

-- 50
-- select c.customer_name ,  p.product_name , ord.order_date from 
-- customers as c join orders as ord  on c.customer_id = ord.customer_id 
-- join order_items as o on ord.order_id = o.order_id
-- join products as p on o.product_id = p.product_id;

-- 51
-- select distinct p.product_name ,  p.category from products as p join order_items as o
-- on p.product_id = o.product_id;

-- 52

-- select  o.order_id , sum(p.quantity * p.unit_price)  from orders as o  join order_items as p 
-- on o.order_id = p.order_id group by o.order_id ;


-- 53
-- select c.customer_name , sum(q.quantity * q.unit_price) from 
-- customers as c join orders as ord on c.customer_id = ord.customer_id
-- join order_items as q on ord.order_id = q.order_id
-- group by c.customer_name;


-- 54 
-- select e.emp_name , d.dept_name , d.location from employees as e 
-- join departments as d on d.dept_id = e.dept_id;


-- 55 

-- select d.dept_name , e.emp_name from departments as d left join employees as e 
-- on d.dept_id = e.dept_id;

-- 56 
-- select  d.dept_name , e.emp_name from departments as d left join employees as e 
-- on d.dept_id = e.dept_id where e.emp_id is null;

-- 57 
-- select c.customer_name , o.order_id from 
-- customers as c left join orders as o on c.customer_id = o.customer_id;

-- 58 
-- select c.customer_name , o.order_id from 
-- customers as c left join orders as o on c.customer_id = o.customer_id
-- where o.order_id is null;

-- 59 
-- select p.product_name , count(q.quantity) from products as p 
-- left join order_items as q on p.product_id = q.product_id
-- group by p.product_name;

-- 60 
-- select p.product_name , q.order_item_id from products as p 
-- left join order_items as q on p.product_id = q.product_id
-- where q.order_item_id is null;

-- 61 
-- select e.emp_name from employees as e left join employees as m 
-- on e.manager_id = m.emp_id where e.manager_id is null;

-- 62


-- SELECT 
--     m.emp_name AS manager,
--     COUNT(e.emp_id) AS employees
-- FROM employees AS m
-- LEFT JOIN employees AS e
--     ON m.emp_id = e.manager_id
-- GROUP BY m.emp_name
-- HAVING COUNT(e.emp_id) > 0;


-- 63

-- select c.customer_name ,  sum(q.quantity * q.unit_price) from customers as c 
-- left join orders as ord on c.customer_id = ord.customer_id 
-- left join order_items as q on ord.order_id = q.order_id
-- group by c.customer_name;

-- 64
-- select distinct m.emp_name from employees as m left join employees as e 
-- on m.emp_id = e.manager_id where e.manager_id is not null;

-- 65 
-- select  e.emp_name , e.salary from employees as e join employees as m 
-- on e.manager_id = m.emp_id where e.salary < m.salary;

-- 66
-- select e.emp_name from employees as e join employees as m on e.manager_id = m.emp_id 
-- where m.emp_name = 'Rahul';

-- 67 
-- select m.emp_name , count(e.emp_id) from employees as m join employees as e 
-- on m.emp_id = e.manager_id group by m.emp_name;

-- 68  -- Subquery 

-- select emp_name , salary from employees where salary > (
--   select avg(salary) from  employees
-- );

-- 69 
-- select  emp_name , salary from employees where salary < (
--   select avg(salary) from employees
-- );


-- 70
-- select emp_name , salary from employees where salary = ( 
--   select max(salary) from employees
-- );

-- 71
-- select emp_name , salary from employees where salary = ( 
--   select max(salary)  from employees where salary <(
--     select max(salary) from employees
--   )
-- );

-- 72 

-- select emp_name , salary from employees where salary = ( 
--   select min(salary) from employees
-- );

-- 73 
-- select emp_name , salary from employees where salary >  (
--   select salary from employees where emp_name = 'Rahul'
-- );

-- 74 
-- select emp_name , salary from employees where dept_id = 1 and salary >(
--   select avg(salary) from employees where dept_id = 1
-- );

-- 75
-- select emp_name , salary from employees where salary =(
-- select max(salary) from employees);

-- 76 
-- select dept_name FROM departments where dept_id in(
--   select dept_id 
--   from employees where 
--   salary > 90000
-- );

-- 77
-- select emp_name from employees where dept_id  in (
--   select dept_id from departments where dept_name = 'IT'
-- );

-- 78 
-- select emp_name from employees where dept_id  in (
--   select dept_id from departments where dept_name = 'IT'
-- );

-- 79 
-- select product_name , price from products where price > (
--   select max(price) from products where category = 'Furniture'
-- );

-- 80 
-- select product_name , price from products where price < (
--   select min(price) from products where category = 'Electronics'
-- );

-- 81 
-- select customer_name from customers where customer_id in(
--   select customer_id from orders
-- );

-- 82 

-- select customer_name from customers where customer_id not in(
--   select customer_id from orders
-- );

-- 83 

-- select emp_name , salary from employees where salary  = (
--   select max(salary) from employees where salary  <(
--     select max(salary) from employees
--   )
-- );

-- 84 
-- select emp_name , salary from employees where salary = (
--   select max(salary) from employees where salary < (
--     select max(salary) from employees where salary < (
--       select max(salary) from employees
--     )
--   )
-- );


-- 85 
select emp_name , emp_id , 
(
  select max(salary) over()
)

















