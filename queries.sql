CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50),
location VARCHAR(50)
);
INSERT INTO departments VALUES
(10,'HR','Jaipur'),
(20,'IT','Bangalore'),
(30,'Finance','Mumbai'),
(40,'Marketing','Delhi'),
(50,'Legal','Pune');
CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
dept_id INT,
salary INT,
city VARCHAR(50)
);
INSERT INTO employees VALUES
(101,'Amit',10,45000,'Jaipur'),
(102,'Bhavna',20,72000,'Bangalore'),
(103,'Chirag',20,68000,'Bangalore'),
(104,'Divya',30,55000,'Mumbai'),
(105,'Esha',NULL,39000,'Delhi'),
(106,'Farhan',40,61000,'Delhi'),
(107,'Gaurav',60,50000,'Kolkata'),
(108,'Hina',30,83000,'Mumbai');
CREATE TABLE projects (
proj_id INT PRIMARY KEY,
proj_name VARCHAR(50),
dept_id INT,
budget INT
);
INSERT INTO projects VALUES
(1,'Payroll Revamp',10,120000),
(2,'Cloud Migration',20,500000),
(3,'Mobile App',20,300000),
(4,'Audit Automation',30,250000),
(5,'Brand Refresh',40,180000),
(6,'Data Lake',70,400000);


-- select e.emp_id , e.emp_name , d.dept_name , d.dept_location from employees e join departments d on e.dept_id = d.dept_id;

-- select p.proj_id , p.proj_name , d.dept_name , p.budget from departments as d join projects as p on p.dept_id = d.dept_id;

-- select e.emp_name , d.dept_name , p.proj_name from employees as e join departments as d join projects as p 
-- on e.dept_id = d.dept_id and d.dept_id = p.dept_id and p.dept_id = e.dept_id;

-- select e.emp_id , e.emp_name , e.dept_id , d.dept_name from employees as e  left join departments as d on d.dept_id = e.dept_id;


-- select d.dept_id , d.dept_name , p.proj_name , p.budget from departments as d left join projects as p on
-- d.dept_id = p.dept_id ;


-- select e.emp_id , e.emp_name , e.dept_id from employees as e left join departments as d on e.dept_id = d.dept_id where d.dept_name is null;

-- select e.emp_name , d.dept_id , d.dept_name from employees as e right join departments as d on e.dept_id = d.dept_id;


-- select d.dept_name , p.proj_name , p.proj_id , p.dept_id from departments as d left join projects as p on 
-- d.dept_id = p.dept_id;


-- select * from employees e cross join departments d where (dept_name ='Legal' or dept_name = 'Finance') and salary >= 70000 ;

-- select p.proj_name , p.budget , d.dept_name , d.dept_location from projects as p join departments as d  where  

-- select * from projects cross join departments 
-- where budget >= 400000 and location in ('Mumbai' , 'Pune');


-- select   as totalCombination from employees cross join departments;

-- select * from employees where salary >60000;


-- select * from employees  where city in('Mumbai', 'Delhi');


-- select * from departments where location in ('Bangalore' ,'Delhi');

-- select * from departments where dept_id >=30;


-- matching err 
-- select * from departments where dept_name like 'f%' or dept_name like'L%' ;

-- select * from projects where budget between 200000 and 400000;

-- select * from projects where dept_id = 20;

-- select * from projects where proj_name like '%a%' and budget < 300000;

-- select e.emp_name, d.dept_name, d.location ,  p.proj_name,  p.budget from employees as e join departments as d join projects as p
-- where e.dept_id = d.dept_id and d.dept_id = p.dept_id and p.dept_id = e.dept_id;

-- q1
-- select e.emp_id,e.emp_name,d.dept_name,d.location from employees e join departments d on e.dept_id=d.dept_id;
-- q2
-- select p.proj_id,p.proj_name,d.dept_name,p.budget from projects p join departments d on p.dept_id=d.dept_id;
-- q3
-- select e.emp_name,d.dept_name,p.proj_name from employees e join departments d on e.dept_id=d.dept_id join projects p on d.dept_id=p.dept_id;
-- q4
-- select e.emp_id,e.emp_name,e.dept_id,d.dept_name from employees e left join departments d on e.dept_id=d.dept_id;
-- q5
-- select d.dept_id,d.dept_name,p.proj_name,p.budget from departments d left join projects p on d.dept_id=p.dept_id;
-- q6
-- select e.emp_id,e.emp_name,e.dept_id from employees e left join departments d on e.dept_id=d.dept_id where d.dept_id is null;
-- q7
-- select e.emp_name,d.dept_id,d.dept_name from employees e right join departments d on e.dept_id=d.dept_id;
-- q8
-- select d.dept_name,p.proj_id,p.proj_name,p.dept_id from departments d right join projects p on d.dept_id=p.dept_id;
-- q9
-- select d.dept_id,d.dept_name,d.location from departments d left join employees e on d.dept_id=e.dept_id where e.emp_id is null;
-- q10
-- select e.emp_name,e.salary,d.dept_name from employees e cross join departments d where d.dept_name in ('Finance','Legal') and e.salary>70000;
-- q11
-- select p.proj_name,p.budget,d.dept_name,d.location from projects p cross join departments d where p.budget>=400000 and d.location in ('Mumbai','Pune');
-- q12
-- select count(*) as total_combinations from employees cross join departments;
-- q13
-- select * from employees where salary>60000;
-- q14
-- select emp_id,emp_name,salary,city from employees where city in ('Delhi','Mumbai');
-- q15
-- select emp_id,emp_name,dept_id,salary from employees where dept_id is null;
-- q16
-- select * from departments where location in ('Bangalore','Delhi');
-- q17
-- select * from departments where dept_id>=30;
-- q18
-- select * from departments where dept_name like 'F%' or dept_name like 'L%';
-- q19
-- select * from projects where budget between 200000 and 400000;
-- q20
-- select * from projects where dept_id=20;
-- q21
-- select proj_id,proj_name,budget from projects where proj_name like '%a%' and budget<300000;
-- q22
-- select e.emp_name,d.dept_name,d.location,p.proj_name,p.budget from employees e join departments d on e.dept_id=d.dept_id join projects p on d.dept_id=p.dept_id;
-- q23
-- select e.emp_id,e.emp_name,d.dept_name,p.proj_name from employees e left join departments d on e.dept_id=d.dept_id left join projects p on d.dept_id=p.dept_id;
-- q24
-- select e.emp_name,e.salary,d.dept_name,p.proj_name,p.budget from employees e join departments d on e.dept_id=d.dept_id join projects p on d.dept_id=p.dept_id where e.salary>60000 and p.budget>250000;
-- q25
-- select d.dept_id,d.dept_name,e.emp_name,p.proj_name from departments d left join employees e on d.dept_id=e.dept_id left join projects p on d.dept_id=p.dept_id;
-- q26
-- select e.emp_name,d.location,p.proj_name from employees e join departments d on e.dept_id=d.dept_id join projects p on d.dept_id=p.dept_id where d.location in ('Bangalore','Mumbai');
-- q27
-- select e1.emp_name as employee_1,e2.emp_name as employee_2,e1.city from employees e1 join employees e2 on e1.city=e2.city and e1.emp_id<e2.emp_id;
-- q28
-- select p.proj_name,p.dept_id,e.emp_name from projects p left join employees e on p.dept_id=e.dept_id;















