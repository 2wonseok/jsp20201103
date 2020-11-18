SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;

SELECT dno "부서번호", AVG(salary) "급여 평균" FROM employee GROUP BY dno;

SELECT AVG(salary) "급여 평균" FROM employee GROUP BY dno;
SELECT dno, ename, AVG(salary) FROM employee GROUP BY dno; 
SELECT dno, job, COUNT(*), SUM(salary) FROM employee GROUP BY dno, job ORDER BY dno, job;

SELECT MAX(salary), MIN(salary), AVG(salary), SUM(salary) FROM employee WHERE job= 'CLERK'; 

SELECT job, avg(salary) FROM employee 
WHERE job= 'CLERK'
GROUP BY job;

SELECT job, avg(salary) FROM employee 
GROUP BY job
HAVING avg(salary) >= 3000;

SELECT dno, max(salary) 
FROM employee 
GROUP BY dno
HAVING max(salary) >= 3000;

SELECT job, COUNT(*), sum(salary)
FROM employee
WHERE job NOT LIKE '%MANAGER%'
GROUP BY job
HAVING sum(salary) >= 5000
ORDER BY sum(salary);

SELECT max(avg(salary))
FROM employee
GROUP BY dno;

SELECT max(salary) as "Maximum",
       min(salary) as "Minimum",
       sum(salary) as "Sum",
       ROUND(avg(salary)) as "Average"
FROM employee;

SELECT job, max(salary) "Maximum",
            min(salary) "Minimum",
            sum(salary) "Sum",
            ROUND(avg(salary)) "Average"
FROM employee
GROUP BY job;

SELECT job, COUNT(*)
FROM employee
GROUP BY job;

SELECT COUNT(manager)
FROM employee;

SELECT max(salary) - min(salary) difference
FROM employee;

SELECT job, min(salary)
FROM employee
GROUP BY job
HAVING NOT min(salary) < 2000
ORDER BY min(salary) desc;

SELECT dno, COUNT(*) "Number of People",
            ROUND(avg(salary)) "Salary"
FROM employee
GROUP BY dno
ORDER BY dno asc;

SELECT decode(dno, 10, 'ACCOUNTING',
                  20, 'RESEARCH',
                  30, 'SALES',
                  40, 'OPERATIONS') "dname",
       decode(dno , 10, 'NEW YORK',
                    20, 'RESEARCH',
                    30, 'SALES',
                    40, 'BOSTON') "Location",
       COUNT(*) "Number of People",
       ROUND(avg(salary)) "Salary"
FROM employee
GROUP BY dno;

SELECT job, dno,
       decode(dno, 10, sum(salary)) "부서 10",
       decode(dno, 20, sum(salary)) "부서 20",
       decode(dno, 30, sum(salary)) "부서 30",
       sum(salary) "총액"
FROM employee
GROUP BY job, dno
ORDER BY dno;

SELECT * FROM employee;

SELECT ename FROM employee WHERE dno = 30 AND ename LIKE '%W%';
SELECT ename FROM employee WHERE dno = 30 AND UPPER(ename) LIKE UPPER('%w%');