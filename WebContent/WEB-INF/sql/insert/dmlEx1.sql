-- 데이터 (record, row) 추가
-- INSERT INTO table_name (col1, col2) VALUES (val1, val2);
CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0 = 1;

-- 책 227p
INSERT INTO dept_copy
VALUES(10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept_copy
(dno, loc, dname)
VALUES(20, 'DALLAS', 'RESEARCH');

-- 책 228p
INSERT INTO dept_copy
(dno, dname)
VALUES(30, 'SALES');

INSERT INTO dept_copy
VALUES(40, 'OPERATIONS', NULL);

-- 책 229p
INSERT INTO dept_copy
VALUES(50, 'COMPUTING', ' ');

commit;
SELECT * FROM dept_copy;

CREATE TABLE emp_copy
AS
SELECT eno, ename, job, hiredate, dno
FROM employee
WHERE 0 = 1;

INSERT INTO emp_copy
VALUES(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);

-- 책 230p
INSERT INTO emp_copy
VALUES(7010, 'TOM', 'MANAGER',
    TO_DATE('2012, 05, 01', 'YYYY, MM, DD'), 20);
    
INSERT INTO emp_copy
VALUES(7020, 'JERRY', 'SALESMAN', SYSDATE, 30);

-- 책 231p
INSERT INTO dept_copy
SELECT * FROM department;
