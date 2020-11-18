SELECT sysdate FROM dual; 

SELECT LOWER(ename) AS name FROM employee;

SELECT UPPER(ename) AS name FROM employee;

SELECT INITCAP(ename) AS name FROM employee;

SELECT INITCAP('oracle mania') AS name FROM dual;

SELECT 'Oracle mania', 
    UPPER('Oracle mania'),
    LOWER('Oracle mania'), 
    INITCAP('Oracle mania') 
    FROM dual;
 
SELECT ename, 
    LOWER(ename), 
    job, INITCAP(job) 
FROM employee;    
    
SELECT * FROM employee; 

SELECT eno, ename, dno 
FROM employee 
WHERE ename='scott'; 

SELECT eno, ename, dno FROM employee WHERE LOWER(ename) = 'scott';

SELECT eno, ename, dno FROM employee WHERE INITCAP(ename) = 'Scott';

SELECT ename, LENGTH(ename) length FROM employee;
SELECT LENGTH('�����α׷���') FROM dual;
SELECT ename, LENGTHB(ename) len FROM employee;
SELECT LENGTHB('�����α׷���') FROM dual;

SELECT LENGTH('OraclaMania'), LENGTH('����Ŭ�ŴϾ�') FROM dual;

SELECT LENGTHB('OracleMania'), LENGTHB('����Ŭ�ŴϾ�') FROM dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ',' || job FROM employee;

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;

SELECT SUBSTR('Oracle mania', 4, 3), SUBSTR('Oracle mania', -4, 3) FROM dual;
SELECT * FROM employee WHERE SUBSTR(ename, -1, 1)='N';


SELECT * FROM employee WHERE substr(hiredate, 1, 2) = '87';
SELECT * FROM employee
WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT ename, INSTR(ename, 'T', 2, 2) FROM employee;
SELECT ename, INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM employee;

SELECT INSTR('Oracle mania', 'a') FROM dual;
SELECT INSTR('Oracle mania', 'a', 5, 2) FROM dual;

SELECT INSTR('����Ŭ�ŴϾ�','��'), INSTR('����Ŭ�ŴϾ�','��') FROM dual;

SELECT * FROM employee WHERE INSTR(ename, 'R', 3, 1) = 3;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
SELECT ename, RPAD(ename, 10, '#') RPAD FROM employee;

SELECT LPAD(salary, 10, '*') FROM employee;
SELECT RPAD(salary, 10, '*') RPAD FROM employee;

SELECT ' Oracle mania', 
    LTRIM(' Oracle mania '), 
    RTRIM(' Oracle mania ') 
FROM dual;

SELECT 'Oracle mania', 
    TRIM('O'FROM 'Oracle mania') 
FROM dual;

SELECT TRIM(' Oracle mania ') FROM dual;
