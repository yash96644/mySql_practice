create database view;
use view;
create table emp(id int , name varchar(20) , salary int);
insert into emp values(1 , 'yash' , 1000),
(2 , 'aman',10000);
create view emp_view as select id , name from emp;
select * from emp_view;

insert into emp_view values ( 3 , 'gupta');
select * from emp_view;

select * from emp;



-- view are of two type 1 materlize view and non materlize view 
-- a view is not updateble if t follow aggregate function , distinct , group by , having m union  =,union all
