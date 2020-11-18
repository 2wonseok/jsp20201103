SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal;

SELECT ename, salary, grade 
FROM employee, salgrade
WHERE salary BETWEEN losal AND hisal;

SELECT e.ename, d.dname, e.salary, s.grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno
AND salary BETWEEN losal AND hisal;

SELECT * FROM employee e, department d, salgrade s
WHERE e.dno = d.dno
AND e.salary BETWEEN s.losal AND s.hisal
AND e.eno = 7788;

SELECT s.grade FROM employee e, salgrade s
WHERE e.eno = 9494
AND salary BETWEEN s.losal AND s.hisal;

SELECT e.ename FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal
AND s.grade = 5;