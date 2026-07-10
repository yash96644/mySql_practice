-- show databases;
-- use world;
-- describe country;
-- select Name as countryName, Continent , population+500 as updatepop
-- from country;
-- ## select coloum ko access karta hai
-- # you can write you logic in any case format 
-- # you can give any column name using as keyword

-- select *  from country where continent = 'europe' and indepyear > 1900;

-- select * from country;
-- -- get they coutnry code and country name where the surafece are of they country is greater than 900
-- -- only for the country where region is southernEurope
-- -- get they cc and cn where country belong to africa and the region is central aferica
-- -- get the country name countinent and population where they belong to asia or aferica 
-- -- get they cn and pop and region with 10% increase in they populaton for they country whose indepyear is after 1950
-- -- get * they values of country where they cn any they localname is same
-- select name , code from country where surfacearea > 900;
-- select name , code from country where
--  region = 'Southern Europe';
--  select name, code , population from country where Continent = 'africa' and region = 'central africa';
--  select name, code , Continent , population from country where Continent = 'asia' or Continent = 'africa';
--  select name , population*1.1, region from country where indepyear > 1950;
--  select * from country where name = localname;




-- between opertaor , in , like 
-- term what is dbms and what are differnt type of database avalavable 


select name from country where population between 100000 and 50000000;
select name from country where SurfaceArea between 50000 and 200000;
select name from country where LifeExpectancy between 60 and 75;
select name , continent from country where gnp between 1000 and 50000;
SELECT Name, Population
FROM city
WHERE Population BETWEEN 100000 AND 500000;
select * from country;
select name , code from country where GNPOld between 5000 and 50000;
# IN
select name from country where continent in ('asia' , 'Europe' , 'africa');
select * from country where name in('india' , 'china' , 'japan');
select * from country where governmentForm in('Republic' , 'Federation government' , 'Constitutional Monarchy');
select * from country where region in ('south asia' , 'western europe' , 'north america');
select * from country where code in('IND', 'USA', 'CHN');
select * from country where code2 in ('IN', 'US', 'JP');
select * from country where headofstate in('Elizabeth II', 'George W. Bush', 'Jiang Zemin');

#like 

select * from country where name like 'a%';
select * from country where name like '%a';
select * from country where name like '%an%';
select * from country where localname like 'b%';
select * from country where region like '%asia%';
select * from country where governmentform like 'republic';

-- A DBMS is software that manages databases and provides an interface for users and applications to store, retrieve, and manipulate data securely and efficiently.
-- typeof db 
-- rdbms , no sql , network , heirechal , oodbms , cloude database


select name, population from city where name like '%e%';
select name , population from city where name like '%b_';
select name ,population from city where name like '_a%r_';
select name , population from city where name like '%aa%';
select name , population from city where name like '%e_e%';


-- inbuilt fcuntion  1 scaler fucntion apply on every row and return the output in every row

-- string , number , dates
use world;
-- select name	 concat_ws('  ' , name , population) from city;


describe country;
select name , upper(name) , substr(name ,-1, 3) from country where name = 'Switzerland';

select length(name) , char_length(name) from country;
select replace(name , 'a' , '@') from country;
-- select trim()
select current_date() , current_time() , now();

select now(), adddate(now() , interval 1 month);
select now() , year(now()) , month(now()) ;

select now() , extract(month from now()) , weekdy(now()) , extract(minute from now()) ;
select now() , date_format(now() , 'year is %Y') , date_format(now() , 'year is %y month is %M, weekdays os %W');


-- substr , char_ lenght , trim , lpad , rpad , replace
-- adddate with interval ,year , month ,extract, date_fromat , now()












































