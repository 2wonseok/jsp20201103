-- UPDATE 
-- 데이터를 변경하는 명령문
-- UPDATE tname SET col1 = val1, cal2 = val2 WHERE 
CREATE TABLE dept_copy
AS
SELECT * FROM department;



-- 책 (232p)
UPDATE dept_copy
SET dname = 'HR';

-- 책 (233p)
UPDATE dept_copy
SET dname = 'PROGRAMMING', loc='SEOUL'
WHERE dno = 10;

UPDATE dept_copy
SET loc=(
         SELECT loc
         FROM dept_copy
         WHERE dno = 20)
WHERE dno = 10;

-- 책 (234p)
UPDATE dept_copy
SET dname = (SELECT dname
             FROM dept_copy
             WHERE dno = 30), 
    loc = (SELECT loc
           FROM dept_copy
           WHERE dno = 30)
WHERE dno = 10;

commit;
SELECT * FROM dept_copy;

-- 혼자 해보기 4~7번
-- 4번
CREATE TABLE emp_copy
AS
SELECT * FROM employee;

-- 5번
UPDATE emp_copy
SET dno = 10
WHERE eno = 7788;

-- 6번
UPDATE emp_copy
SET salary = (SELECT salary 
              FROM emp_copy
              WHERE eno = 7499),
    job = (SELECT job
           FROM emp_copy
           WHERE eno = 7499)
WHERE eno = 7788;

-- 7번
UPDATE emp_copy
SET dno = (SELECT dno
           FROM emp_copy
           WHERE eno = 7369)
WHERE job = (SELECT job
             FROM emp_copy
             WHERE eno = 7369);

commit;
SELECT * FROM emp_copy;

-- DELETE
-- DELETE tname WHERE

SELECT * FROM dept_copy;

DELETE FROM dept_copy
WHERE dno = 10;

DELETE dept_copy;

commit;

-- 책 (236p)
DROP TABLE emp_copy;
CREATE TABLE emp_copy
AS
SELECT * FROM employee;
SELECT * FROM emp_copy;

DELETE emp_copy
WHERE dno = (SELECT dno
             FROM department
             WHERE dname = 'SALES');

commit;
SELECT * FROM emp_copy;

-- 혼자해보기 8~10번
-- 8번
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

-- 9번
DELETE FROM dept_copy
WHERE dname = 'RESEARCH';

-- 10번
DELETE FROM dept_copy
WHERE dno IN (10, 40);

SELECT * FROM dept_copy;