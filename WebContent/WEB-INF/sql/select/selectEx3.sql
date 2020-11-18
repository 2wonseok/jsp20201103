SELECT * FROM employee;
SELECT * FROM employee WHERE ename='WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
SELECT * FROM employee WHERE ename LIKE '%D';
SELECT * FROM employee WHERE ename LIKE '%D%';
SELECT * FROM employee WHERE ename LIKE '_A_D';
SELECT * FROM employee WHERE ename LIKE '_A%';

SELECT *FROM employee
WHERE ename like 'F%';

SELECT *FROM employee
WHERE ename like 'F';

SELECT * FROM employee
WHERE ename LIKE '%M%';

SELECT * FROM employee
WHERE ename LIKE '%N';

SELECT * FROM employee 
WHERE ename LIKE '_A%';

SELECT * FROM employee
WHERE ename LIKE '__A%';

SELECT * FROM employee
WHERE ename NOT LIKE '%A%';

SELECT ename, dno, commission
FROM employee;

SELECT * FROM employee
WHERE commission = null;

SELECT * FROM employee
WHERE commission is null;

SELECT * FROM employee
WHERE commission is not null;

SELECT * FROM employee
ORDER BY ename;

SELECT * FROM employee
ORDER BY eno;

SELECT * FROM employee
WHERE salary > 2000 
ORDER BY eno;

SELECT * FROM employee
ORDER BY eno ASC;

SELECT * FROM employee
ORDER BY eno DESC;

SELECT * FROM employee
ORDER BY dno, ename;

SELECT * FROM employee
ORDER BY dno DESC, ename ASC;

SELECT * FROM employee
ORDER BY salary asc;

SELECT * FROM employee
ORDER BY salary;

SELECT * FROM employee
ORDER BY salary DESC;

SELECT * FROM employee
ORDER BY ename;

SELECT * FROM employee
ORDER BY hiredate DESC;

SELECT * FROM employee
ORDER BY salary DESC, ename asc;

SELECT ename FROM employee WHERE ename LIKE '%A%' ORDER BY ename ASC;