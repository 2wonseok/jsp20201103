SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, sysdate-hiredate FROM employee;
SELECT ename, hiredate, ROUND(sysdate-hiredate) FROM employee;

SELECT sysdate FROM dual;

SELECT SYSDATE-1 어제,
       SYSDATE 오늘,
       SYSDATE+1 내일
FROM dual;

SELECT ROUND(SYSDATE-hiredate)근무일수 FROM employee;

SELECT hiredate,
       TRUNC(hiredate, 'MONTH')
FROM employee;

SELECT ename, sysdate, hiredate,
              TRUNC(MONTHS_BETWEEN (SYSDATE, hiredate)) 
FROM employee;              

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

SELECT ename, hiredate,
        ADD_MONTHS(hiredate, 6)
FROM employee;

SELECT SYSDATE, 
       NEXT_DAY(SYSDATE, '토요일')
FROM dual;

SELECT SYSDATE, 
       NEXT_DAY(SYSDATE, 2)
FROM dual;

SELECT ename, hiredate,
        LAST_DAY(hiredate)
FROM employee;