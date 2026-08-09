-- =========================
-- DEPT TABLE
-- =========================

CREATE TABLE dept (
    deptno INT,
    dname VARCHAR(14),
    loc VARCHAR(13),
    CONSTRAINT pk_dept PRIMARY KEY (deptno)
);


-- =========================
-- EMP TABLE
-- =========================

CREATE TABLE emp (
    empno INT,
    ename VARCHAR(10),
    job VARCHAR(9),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(7,2),
    comm DECIMAL(7,2),
    deptno INT,

    CONSTRAINT pk_emp PRIMARY KEY (empno),
    CONSTRAINT fk_deptno
        FOREIGN KEY (deptno)
        REFERENCES dept(deptno)
);


-- =========================
-- INSERT INTO DEPT
-- =========================

INSERT INTO dept (deptno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept
VALUES (20, 'RESEARCH', 'DALLAS');

INSERT INTO dept
VALUES (30, 'SALES', 'CHICAGO');

INSERT INTO dept
VALUES (40, 'OPERATIONS', 'BOSTON');


-- =========================
-- INSERT INTO EMP
-- =========================

INSERT INTO emp
VALUES (
    7839,
    'KING',
    'PRESIDENT',
    NULL,
    '1981-11-17',
    5000,
    NULL,
    10
);

INSERT INTO emp
VALUES (
    7698,
    'BLAKE',
    'MANAGER',
    7839,
    '1981-05-01',
    2850,
    NULL,
    30
);

INSERT INTO emp
VALUES (
    7782,
    'CLARK',
    'MANAGER',
    7839,
    '1981-06-09',
    2450,
    NULL,
    10
);

INSERT INTO emp
VALUES (
    7566,
    'JONES',
    'MANAGER',
    7839,
    '1981-04-02',
    2975,
    NULL,
    20
);

INSERT INTO emp
VALUES (
    7788,
    'SCOTT',
    'ANALYST',
    7566,
    '1987-04-19',
    3000,
    NULL,
    20
);

INSERT INTO emp
VALUES (
    7902,
    'FORD',
    'ANALYST',
    7566,
    '1981-12-03',
    3000,
    NULL,
    20
);

INSERT INTO emp
VALUES (
    7369,
    'SMITH',
    'CLERK',
    7902,
    '1980-12-17',
    800,
    NULL,
    20
);

INSERT INTO emp
VALUES (
    7499,
    'ALLEN',
    'SALESMAN',
    7698,
    '1981-02-20',
    1600,
    300,
    30
);

INSERT INTO emp
VALUES (
    7521,
    'WARD',
    'SALESMAN',
    7698,
    '1981-02-22',
    1250,
    500,
    30
);

INSERT INTO emp
VALUES (
    7654,
    'MARTIN',
    'SALESMAN',
    7698,
    '1981-09-28',
    1250,
    1400,
    30
);

INSERT INTO emp
VALUES (
    7844,
    'TURNER',
    'SALESMAN',
    7698,
    '1981-09-08',
    1500,
    0,
    30
);

INSERT INTO emp
VALUES (
    7876,
    'ADAMS',
    'CLERK',
    7788,
    '1987-05-23',
    1100,
    NULL,
    20
);

INSERT INTO emp
VALUES (
    7900,
    'JAMES',
    'CLERK',
    7698,
    '1981-12-03',
    950,
    NULL,
    30
);

INSERT INTO emp
VALUES (
    7934,
    'MILLER',
    'CLERK',
    7782,
    '1982-01-23',
    1300,
    NULL,
    10
);


-- select * from emp;

-- select job,  max(sal) over(partition by job) from emp;
-- select * from(
-- select e.* ,row_number() over(partition by deptno order by empno) as r from emp as e) as x
-- where r <= 2;


-- SELECT *
-- FROM (
--     SELECT 
--         e.*,
--         ROW_NUMBER() OVER (
--             PARTITION BY deptno 
--             ORDER BY empno
--         ) AS r
--     FROM emp AS e
-- ) AS x
-- WHERE r <= 2;



-- Rank and DenseRank 

-- select * , Dense_Rank() over(order by sal desc) , rank() over(order by sal desc)  from emp;


-- select max(SAl) from emp;
-- select sal from (
--   select e.* , Dense_Rank()over(order by sal desc) as r from emp as e) as x
-- where r = 7;

-- select * from (
--   select e.* , Dense_Rank() over(partition by deptno order by sal desc) as r from emp as e
-- ) as m where r <=  2;

-- lead /  lag

-- select * , lag(sal , 5 , 'not set yet') over(order by empno) as r from emp;


-- select sal , prev ,
-- case 
--   when sal > prev then 'higher'
--   when sal < prev then 'lower'
-- else 'equal '
-- end as salay_comp 
--   from 
--   (
--   select * , lag(sal) over(order by empno) as prev from emp
-- ) as x;
-- SELECT 
--     sal,
--     prev,
--     CASE
--         WHEN sal > prev THEN 'higher'
--         WHEN sal < prev THEN 'lower'
--         ELSE 'equal'
--     END AS salary_comp
-- FROM (
--     SELECT
--         sal,
--         LAG(sal) OVER (ORDER BY empno) AS prev
--     FROM emp
-- ) AS x;
