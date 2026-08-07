CREATE TABLE sales (
 sale_id INT PRIMARY KEY,
 product_category VARCHAR(50),
 product_name VARCHAR(50),
 salesperson VARCHAR(50),
 region VARCHAR(20),
 sale_amount DECIMAL(10,2),
 quantity INT,
 sale_date DATE
);

INSERT INTO sales VALUES
(1,'Electronics','Laptop','Alice','North',75000,2,'2024-01-05'),
(2,'Electronics','Phone','Bob','South',25000,5,'2024-01-10'),
(3,'Clothing','Jacket','Alice','East',8000,3,'2024-01-15'),
(4,'Furniture','Chair','Charlie','West',12000,4,'2024-01-20'),
(5,'Electronics','Tablet','Bob','North',35000,2,'2024-02-03'),
(6,'Clothing','Shirt','Charlie','South',3000,10,'2024-02-08'),
(7,'Furniture','Table','Alice','East',22000,1,'2024-02-12'),
(8,'Electronics','Laptop','Charlie','West',80000,1,'2024-02-18'),
(9,'Clothing','Jeans','Bob','North',6000,5,'2024-02-25'),
(10,'Furniture','Sofa','Alice','South',45000,2,'2024-03-02'),
(11,'Electronics','Phone','Charlie','East',28000,3,'2024-03-07'),
(12,'Clothing','Jacket','Bob','West',9500,2,'2024-03-14'),
(13,'Furniture','Wardrobe','Charlie','North',32000,1,'2024-03-19'),
(14,'Electronics','Headphones','Alice','South',5000,8,'2024-03-25'),
(15,'Clothing','Shirt','Alice','East',3500,12,'2024-04-01'),
(16,'Furniture','Bookshelf','Bob','West',15000,3,'2024-04-06'),
(17,'Electronics','Tablet','Charlie','North',38000,2,'2024-04-11'),
(18,'Clothing','Jeans','Alice','South',7000,4,'2024-04-16'),
(19,'Furniture','Chair','Bob','East',13000,5,'2024-04-21'),
(20,'Electronics','Laptop','Alice','West',72000,1,'2024-04-26'),
(21,'Clothing','Jacket','Charlie','North',10000,3,'2024-05-01'),
(22,'Furniture','Table','Bob','South',24000,2,'2024-05-06'),
(23,'Electronics','Phone','Alice','East',27000,4,'2024-05-11'),
(24,'Clothing','Shirt','Bob','West',4000,8,'2024-05-16');

-- select sale_id , product_category , salesperson , sale_amount from
-- sales where sale_amount > (select avg(sale_amount) from sales)
-- order by sale_amount desc;

-- select * from sales where sale_amount = (
--   select Max(sale_amount) from sales
-- );


-- select sale_id , salesperson , product_name , sale_amount from sales 

-- select sale_id , salesperson , product_name , sale_amount
-- from sales
-- where salesperson =(select salesperson  from sales
-- group by salesperson)
-- order by sale_id desc 
-- ;


-- select * from sales 
-- where salesperson = (

-- select salesperson from sales group by salesperson 
-- order by count(sale_amount) desc
-- limit 1
-- )
-- order by sale_id;


-- select sale_id , salesperson , product_name , sale_amount from sales 
-- where product_name in (
-- select product_name
-- from sales 
-- group by product_name
-- having count(distinct salesperson) > 2)
-- order by sale_id ;

-- Find all sales from regions whose average sale amount is above the overall average sale amount of all regions.
-- Display sale_id, product_category, salesperson, region, and sale_amount, sorted by sale_id.


-- select sale_id , product_category ,salesperson , product_name , region , sale_amount 
-- from sales as s 
-- where
-- region in (
--   select region from sales
--   group by region
--   having avg(sale_amount)> (
--     select avg(sale_amount) from sales
--   )
-- )
-- order by sale_id;





-- select sale_id , product_category ,product_name , sale_amount 
-- from sales 
-- where product_category in (
--   select product_category 
--   from sales group by product_category
--   having max(sale_amount)> (
--     select max(sale_amount) from sales where product_category !='Furniture'
--   )
-- )

-- select sale_id , product_category , product_name , sale_amount
-- from sales
-- where sale_amount > (
--   select max(sale_amount)
--   from sales
--   where product_category = 'Furniture'
-- )















