select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 3000;
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE job = 'CLERK';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20';
--SELECT * FROM employee WHERE hiredate = '81/02/20';
SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' 
AND salary > 3000;
         
SELECT * FROM employee
WHERE hiredate >= '1981/01/01'
OR salary > 3000;
         
SELECT * FROM employee
WHERE NOT salary > 3000;
        
SELECT * FROM employee
WHERE ename >= 'C'
AND salary > 2000 AND dno<> 30;       
         
SELECT * FROM employee
WHERE dno = 10 or job = 'MANAGER';
         
SELECT * FROM employee
WHERE not dno = 10;

SELECT * FROM employee
WHERE dno <> 10;
         
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;
         
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;
         
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;
         
SELECT * FROM employee
WHERE salary >= 3000 AND salary <= 5000;
         
SELECT * FROM employee
WHERE salary BETWEEN 3000 AND 5000;
         
SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';
 
SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;
         
SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;
         
SELECT * FROM employee 
WHERE dno = 10 OR dno = 20;
         
SELECT * FROM employee
WHERE dno IN(10, 20);
         
SELECT * FROM employee
WHERE dno NOT IN (20);
         
SELECT * FROM employee
WHERE salary between 1000 AND 1500;
         
SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;
         
SELECT * FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;
         
SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;
         
SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';
         
SELECT * FROM employee
WHERE commission IN(300, 500, 1400);
         
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;
         
SELECT * FROM employee
WHERE commission <> 300 AND commission <> 500 AND commission <> 1400; 
 
SELECT * FROM employee
WHERE commission NOT IN(300,500,1400);

-- 65페이지 혼자해보기 문제 1, 4, 5, 6, 14, 15
--1
SELECT ename, salary, salary + 300 
FROM employee;
--2
SELECT ename, salary, salary*12+100
FROM employee
ORDER BY salary*12+100 DESC;
--3
SELECT ename, salary
FROM employee
WHERE salary > 2000
ORDER BY salary DESC;

--4
SELECT ename, dno 
FROM employee 
WHERE eno = 7788;
--5
SELECT ename, salary 
FROM employee 
WHERE salary NOT BETWEEN 2000 AND 3000;
--6
SELECT ename, JOB, hiredate 
FROM employee 
WHERE hiredate BETWEEN '81/02/20' AND '81/05/01';
--7
SELECT ename, dno
FROM employee
WHERE dno IN(20,30)
ORDER BY ename;
--8
SELECT ename, salary, dno
FROM employee
WHERE salary between 2000 and 3000
ORDER BY ename;
--9
SELECT ename, hiredate
FROM employee
WHERE hiredate like '81%';
--10
SELECT ename, job 
FROM employee
WHERE manager is null;
--11
SELECT ename, salary, commission
FROM employee
WHERE commission is NOT null
ORDER BY salary, commission;
--12
SELECT ename
FROM employee
WHERE ename like'__R%';
--13
SELECT ename
FROM employee
WHERE ename like'%A%';
--14
SELECT ename, JOB, salary 
FROM employee 
WHERE JOB IN('CLERK', 'salesman') AND salary NOT IN(1600, 950, 1300);
--15
SELECT ename, salary, commission 
FROM employee 
WHERE commission >= 500;

SELECT ename FROM employee WHERE eno = '1234';
SELECT ename FROM employee WHERE eno = '1234';
commit;

INSERT INTO department VALUES (50, 'BUY', 'SEOUL'); 
SELECT loc FROM department  WHERE dno = '10' OR dno = '50';
SELECT loc FROM department WHERE dno in(10,50);
SELECT ename FROM employee