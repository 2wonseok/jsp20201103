SELECT manager FROM employee 
WHERE eno = 7499;

SELECT ename FROM employee
WHERE eno = 7698;

SELECT ename FROM employee
WHERE eno = (SELECT manager 
             FROM employee 
             WHERE eno = 7499);
             
SELECT ename FROM employee
WHERE salary > (SELECT salary
                FROM employee
                WHERE eno = 7499);

SELECT ename FROM employee
WHERE salary > (SELECT salary
                FROM employee);
                
-- 다중 행 서브 쿼리
/*
IN        값이 하나라도 있으면
ANY(SOME) 하나 이상이 만족하면
ALL       모두 만족하면
*/

SELECT dno 
FROM department
WHERE dno <= 20;

SELECT ename, dno 
FROM employee
WHERE dno IN (SELECT dno 
              FROM department
              WHERE dno <= 20);

SELECT eno, ename
FROM employee
WHERE salary IN (SELECT MIN(salary)
                 FROM employee
                 GROUP BY dno);
                 
SELECT eno, ename
FROM employee
WHERE (dno, salary) IN (SELECT dno, MIN(salary)
                         FROM employee
                         GROUP BY dno);
                 
SELECT dno, MIN(salary)
FROM employee
GROUP BY dno;










             
