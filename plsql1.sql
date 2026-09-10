-- -- create table employee_2 as 
-- -- select employee_id ,first_name from hr.EMPLOYEES fetch next 2 rows only;

-- select * from EMPLOYEE_2;

-- DECLARE
--     -- V_NAME EMPLOYEE_2.FIRST_NAME%TYPE;
--     v_rec employee_2%rowtype; --(employee_id int , first_name varchar(20))
-- BEGIN
--     SELECT
--         *
--     INTO v_rec
--     FROM
--         EMPLOYEE_2
--     WHERE
--         EMPLOYEE_ID = 101;

--     -- DBMS_OUTPUT.PUT_LINE('vale of they sql qury');
--     -- DBMS_OUTPUT.PUT_LINE(V_NAME);
--     DBMS_OUTPUT.PUT_LINE(v_rec.employee_id  || ' ' || v_rec.first_name);
-- END;

DECLARE
    TYPE V_REC IS RECORD (
            FIRST_NAME  VARCHAR2(20),
            EMPLOYEE_ID INT,
            emp_salary int
    );
    V_NAME V_REC;
BEGIN
    SELECT
        EMPLOYEE_ID,
        FIRST_NAME,
        EMP_SALARY
    INTO
        V_NAME.EMPLOYEE_ID,
        V_NAME.FIRST_NAME,
        V_NAME.emp_salary
    FROM
        EMPLOYEE_2
    WHERE
        EMPLOYEE_ID = 101;

    DBMS_OUTPUT.PUT_LINE(V_NAME.EMPLOYEE_ID || ' ' || V_NAME.FIRST_NAME || ' ' || V_NAME.emp_salary);
END;


-- assigment -- cursor , what are they advantage of using cursor , emplicit cusrore and explicite cursor , hwo to create exmplicate explicate cursor