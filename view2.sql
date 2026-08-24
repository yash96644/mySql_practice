create database view2;
use view2;
create table emp(id int , deptId int);
create table dep(deptId int , deptname varchar(20));
insert into emp values (1 , 10) , (2 , 10) ,(3, 20) , (4,20);
insert into dep values(10 , 'it'), (20,'hr');  
insert into emp value (5 , 30);
insert into dep value( 5 , 'NON');
select  e.id , e.deptId , d.deptname from emp as e join dep as d on e.deptId = d.deptId;


create view emp_dept_view as select e.id , e.deptId , d.deptname from emp as e join dep as d on e.deptId = d.deptId;


select * from emp_dept_vi







































































