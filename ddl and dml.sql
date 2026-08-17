/*
group by 
joins 
subquery 
windows function ( ntile)
dql( 80 )
*/
-- first
create table employee(id int);
select * from employee;
drop table employee;  -- databhi delete hoga and structure of they data also
-- select * from employee;

-- second 
create table employee(id int);

-- alter 
alter table employee add column name varchar(20);  -- dont chnage data it chnage they table structure
alter table employee drop column name ;  -- dropping they colmne 
-- desc employee;
alter table employee modify column id char(20); -- chnage datatype of they column
-- desc employee;
-- insert into employee values(1 , 'yash');
-- select * from employee;

alter table employee add column empid int;
-- alter table employee add constraint unique (empid) ;
-- alter table employee add constraint primary key(empid);
alter table employee modify column id char(20) not null;


-- chnage name of table and column using alter command
alter table employee rename column id to name;  -- chnaging name of they column 
-- alter table employee rename to emp; -- chnaging name of they table
-- alter table employee rename to emo;
-- ALTER TABLE employee RENAME TO new_emp;
-- Or simply:
-- RENAME employee TO new_emp;
-- desc employee;


-- truncate

insert into employee values('yash' , 2);
-- select * from employee;
truncate employee; -- first it will drop they table and then again recreate they table;
select * from employee;  -- duraba se data ke structure ko recreate kr raha he truncate;


insert into employee values('yash' , 1),
('aman' , 2) , ('ram' ,3), ('shyam' , 4);
-- select * from employee;

-- alter table employee drop constraint empid;


-- dml ( data maipation language)
-- update 
-- update employee set empid = '1';  -- setting 1 for they whole column
-- update employee set empid = '1' where name = 'aman';  -- setting for they one values where name = aman 
-- delete from employee;  -- all table data whill be delete
-- delete from employee where name = 'shyam';
select * from employee;
-- desc employee;
















