SELECT commission, nvl(commission, 0) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;

SELECT COUNT(*) FROM employee;

SELECT SUM(salary) "급여총액",
       AVG(salary) "급여평균",
       MAX(salary) "최대급여",
       MIN(salary) "최소급여"
FROM employee;

SELECT MAX(hiredate) "최근입사일",
       MIN(hiredate) "최초입사일"
FROM employee;

SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;
SELECT AVG(commission) FROM employee;

SELECT SUM(commission) "커미션 총액" FROM employee;
SELECT COUNT(*) "사원의 수" FROM employee;
SELECT COUNT(commission) "커미션 받는 사원 수" FROM employee;
SELECT COUNT(distinct job) "직업 종류의 개수" FROM employee;
SELECT ename, MAX(salary) FROM employee;

SELECT COUNT(job) FROM employee;
SELECT distinct(job) FROM employee;
SELECT COUNT(distinct(job)) FROM employee;

SELECT MAX(salary) FROM employee;
SELECT ename FROM employee 
WHERE salary = (SELECT MAX(salary) FROM employee);
SELECT ename,salary FROM employee;
