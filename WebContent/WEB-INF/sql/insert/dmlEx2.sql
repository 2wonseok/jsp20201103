--
CREATE TABLE data_type_ex1 (
num1 NUMBER,
num2 NUMBER(2),
num3 NUMBER(3,2)
);

INSERT INTO data_type_ex1 (num1)
VALUES (0);
INSERT INTO data_type_ex1 (num1)
VALUES (0.01);
INSERT INTO data_type_ex1 (num1)
VALUES (999999999999);

INSERT INTO data_type_ex1 (num2)
VALUES (0);
INSERT INTO data_type_ex1 (num2)
VALUES (0, 1);
INSERT INTO data_type_ex1 (num2)
VALUES (99);

INSERT INTO data_type_ex1 (num3)
VALUES (0.01);
INSERT INTO data_type_ex1 (num3)
VALUES (0.015);
INSERT INTO data_type_ex1 (num3)
VALUES (9.015);

commit;
SELECT * FROM data_type_ex1;

-- 문자열
CREATE TABLE data_type_ex2 (
char1 CHAR(3),
vchar2 VARCHAR2(6)
);

INSERT INTO data_type_ex2
(char1) VALUES ('');
INSERT INTO data_type_ex2
(char1) VALUES ('a');
INSERT INTO data_type_ex2
(char1) VALUES ('abc');
--INSERT INTO data_type_ex2
--(char1) VALUES ('abcd'); 오류

INSERT INTO data_type_ex2
(vchar2) VALUES ('abc');
INSERT INTO data_type_ex2
(vchar2) VALUES ('abcdef');

commit;
SELECT * FROM data_type_ex2;

INSERT INTO data_type_ex2
(vchar2) VALUES ('한');
INSERT INTO data_type_ex2
(vchar2) VALUES ('한글');
INSERT INTO data_type_ex2
(vchar2) VALUES ('가나다');

SELECT * FROM data_type_ex2;

CREATE TABLE data_type_ex3 (
date1 DATE
);

SELECT SYSDATE FROM dual;
INSERT INTO data_type_ex3
VALUES (sysdate);

INSERT INTO data_type_ex3
VALUES ('2020-12-03');

INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-12-12', 'YYYY-MM-DD'));

INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-12-02 15:13:00', 'YYYY-MM-DD HH24:MI:SS'));

SELECT TO_CHAR(date1, 'YYYY-MM-DD HH24:MI:SS') nowdate FROM data_type_ex3;

commit;
SELECT * FROM data_type_ex3;

--책 (229p)
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

-- 혼자해보기 
-- 1번
CREATE TABLE emp_insert 
AS
SELECT * FROM employee
WHERE 0 = 1;

-- 2번
INSERT INTO emp_insert
VALUES (1, 'leewonseok', 'student', '', SYSDATE, 5000, 500, 10);

-- 3번
INSERT INTO emp_insert
VALUES (2, 'MOONJS', 'student', '', 
        SYSDATE-1, 5200, 550, 20);
        
commit;
 SELECT * FROM emp_insert;
 
-- 책 231p
INSERT INTO dept_copy
SELECT * FROM department;

commit;
SELECT * FROM dept_copy;
