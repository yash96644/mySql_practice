-- -- -- select * from EMPLOYEE_2;
-- -- -- cursor is a pointer to a private memory area caleed the context area allocated by oracel database engine .
-- -- -- cursor are used to access they rows one by one 
-- -- -- and this cursour is decalre inside they declare block 
-- -- -- declare - open - fetch - close 
-- -- -- emplicate cusors alerady created by they database 
-- -- -- you dont have to open - fetch - close they cursor

-- -- -- explqcited cursour is create by they user 
-- -- -- BEGIN

-- -- --     INSERT INTO EMPLOYEE_2
-- -- --     VALUES (102, 'gupta');

-- -- --     UPDATE EMPLOYEE_2
-- -- --     SET first_name = 'yashu'
-- -- --     WHERE employee_id = 101;

-- -- --     DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);

-- -- -- END;

-- -- -- select * from EMPLOYEE_2;


-- -- -- explaciate cursor 

-- -- declare
-- -- cursor emp_cur is SELECT * from EMPLOYEE_2;

-- -- emp_rec employee_2%rowtype;

-- -- begin 
-- --     open emp_cur;
-- --     if(emp_cur%isopen) then 
-- --         dbms_output.PUT_LINE('cursor is open');
-- --     end if;
    
-- --     -- fetch emp_cur into emp_rec;

-- --     -- DBMS_OUTPUT.PUT_LINE(emp_rec.employee_id);
-- --     for emp_rec in emp_cur LOOP
-- --     dbms_output.PUT_LINE(emp_rec.employee_id)
-- --     end loop;
-- --     -- while (emp_cur%found) loop
-- --     --     DBMS_OUTPUT.PUT_LINE(emp_rec.employee_id);
-- --     --     fetch emp_cur INTO emp_rec;
-- --     -- end loop;
-- --     close emp_cur;
-- -- end;



-- declare 
--     cursor emp_curr is select * from EMPLOYEE_2;
-- begin 
--     for emp in emp_curr LOOP
--         dbms_output.PUT_LINE(emp.employee_id);
--     end loop;
-- end;