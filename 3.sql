use world;

-- if null
select name , indepyear , ifnull(indepyear ,0) from country;

-- coalesce  return they first not null value if both 

select name , indepyear , lifeexpectancy , coalesce(indepyear ,lifeexpectancy ,'hello') from country where name = 'pitcairn';


-- case statment 3 paramenter first true then false  -- nested if condition 
select name ,if(indepyear >1947 ,'before India  ',if (indepyear >1920 , 'just  India ' , 'just before India') ) from country
where name ='ireland';


-- case channing in sql using case keyword , when , then , esle , end 
select name , indepyear , population ,
case 
	when indepyear > 1947  then 'just before' 
    when indepyear >= 1920 then 'before India'
    else 'no condition'
end 
from country;



-- q1 name , contin ent , population and ccreate c coloumn name as catagrory agar mera country population is from 2 l to 5lprint avg population , agar > 5 l large population , or baki me small population

select * from country;
select name , continent , population ,
case 
when 
population between 200000 and 500000 then 'avg population'
when
population > 500000 then 'large population'
else 'small population'
end
from country;


-- q2 print they contientn name and they no of country with they catogray of they continent column agar us continet me no of county me 10 se jada he tp samll , 15 se jada avg continent , 25 se jada large schale continent;

select continent , count(name) as No_of_country,
case when count(name) < 10 then 'small scale'
when count(name) < 15 then 'avg scale'
else 'large scale'
end
 from country group by continent;
 
 -- subquery a query with in an query 
 -- is also i known as nested query in which a queryy is persent inside another query 
 
 use world;
 -- get they name of city where the district of the ciyt is same for the city abu Dhabi 
 -- get all the columns frimthey city table where the population is they max 
 -- get the distict and they name of city where countrycode is same firm herat
 -- get the distict ,c ity and population for all the countries where amsterdam and sort this by they pop
 
 
 -- single row subquery only return on row 
--  select * from country;
--  select * from country where population=(
--  select population from country where population = 1277558000
--  );
--  
--  select * from city where  name = 
--  (select name from city where name = 'Abu Dhabi');

-- select * from city where countrycode  =(
-- select countrycode from city where name = 'Amsterdam'
-- order by population desc
-- ) ;  
-- select * from city where countrycode = 'nld'-- 
 
 
--  
-- select * from city where countrycode = (
-- select countrycode from city where countrycode= 'afg' ); 
 
 
 
 
 

 