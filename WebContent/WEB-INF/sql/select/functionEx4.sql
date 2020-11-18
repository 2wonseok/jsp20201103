SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

SELECT ename, hiredate,
       TO_CHAR(hiredate,'YY-MM'),
       TO_CHAR(hiredate,'YYYY/MM/DD DAY')
FROM employee;

SELECT TO_CHAR(sysdate, 'YYYY/MM/DD HH24:MI:SS')
FROM dual;

SELECT ename, TO_CHAR(salary, 'L999,999')
FROM employee;

SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(23189, '999,999') FROM dual;
SELECT TO_CHAR(255553189, '999,999,999') FROM dual;
SELECT TO_CHAR(5553189, '000,000,000') FROM dual;
SELECT TO_CHAR(255553189, 'l999,999,999') FROM dual;
SELECT TO_CHAR(255553189, 'l999,999,999.000') FROM dual;

SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT
    TO_CHAR(
    TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS'),
    'YYYY-MM-DD HH:MI:SS')
FROM dual;

SELECT ename, hiredate 
FROM employee 
WHERE hiredate=19810220;

SELECT ename, hiredate 
FROM employee 
WHERE hiredate=TO_DATE(19810220, 'YYYYMMDD');

SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;

SELECT '100,000' - '50,000' FROM dual;

SELECT TO_NUMBER('100,000','999,999')
       -TO_NUMBER('50,000','999,999')
FROM dual;

--혼자해보기
-- 1
SELECT SUBSTR(hiredate, 1, 2) 년도,
       SUBSTR(hiredate, 4, 2) 달
FROM employee;

--2
SELECT * FROM employee WHERE SUBSTR(hiredate, 4, 2)='04';

--3
SELECT * FROM employee WHERE MOD(eno, 2)=0;

--4
SELECT hiredate,
       TO_CHAR(hiredate,'YY/MON/DY')
FROM employee;

--5
SELECT TRUNC(sysdate-TO_DATE('2011/01/01', 'YYYY/MM/DD'))
FROM dual;