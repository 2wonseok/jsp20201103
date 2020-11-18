SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission as sum FROM employee;

SELECT ename, commission, NVL(commission, 0) FROM employee;

SELECT ename, salary, commission, 
       NVL(commission, 0), salary * 12 + NVL(commission, 0) 
FROM employee
ORDER BY job;

SELECT ename, commission, NVL2(commission, commission, 0)
FROM employee;

SELECT ename, salary, commission, NVL2(commission, salary*12 + commission, salary*12)
FROM employee
ORDER BY job;

SELECT nullif('a', 'a') FROM dual;

SELECT nullif('a', 'b') FROM dual;

SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
SELECT COALESCE(null, null, 'd', 'c') FROM dual;

SELECT ename, salary, commission, COALESCE(commission, salary, 0)
FROM employee
ORDER BY job;

SELECT ename, dno, DECODE(dno, 10,'ACCOUNTING', 
                               20, 'RESERARCH', 
                               30, 'SALES', 
                               40, 'OPERATIONS', 'DEFAULT') as DNAME
FROM employee
ORDER BY dno;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                           WHEN salary >= 0 THEN 'LOW'
                           ELSE '0' 
                      END DNAMES
FROM employee;

SELECT ename, dno,
    CASE WHEN dno=10 THEN 'ACCOUNTING'
         WHEN dno=20 THEN 'RESEARCH'
         WHEN dno=30 THEN 'SALES'
         WHEN dno=40 THEN 'OPERATIONS'
         ELSE 'DEFAULT'
    END DNAME
FROM employee
ORDER BY dno;

SELECT eno, ename, 
        NVL2(manager, manager, 0) MANAGER
FROM employee;

SELECT eno, ename, job, salary,
    DECODE(job, 'ANALYST', salary+200,
                'SALESMAN', salary+180,
                'MANAGER', salary+150,
                'CLERK', salary+100,
                salary) update_salary
FROM employee;


SELECT ename, salary*12 + NVL(commission, 0) FROM employee