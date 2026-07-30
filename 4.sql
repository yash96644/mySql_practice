create database emp;
use emp;
create table emp1(
id int, name varchar(20) , salary int);

insert into emp1 values(1 , 'a' , 100) , (2,'b',200) , (3,'a', 100) ,(4,'a',300) , (5 , 's' , 20) , (6,'f',500);

select * from emp1
where salary <any (select salary from emp1 where name = 'a');  -- salary 100 se kaam ho yeah fir 300 se kaam ho 


select * from emp1
where salary >7874xa
















ll (select salary from bh where name = 'a');  -- work like = operter now it treat as and opertor like salary is less than 100 or less than 300 list will return less than 100







