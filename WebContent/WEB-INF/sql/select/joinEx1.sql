SELECT * FROM employee;
SELECT * FROM department;

SELECT * FROM employee, department;

SELECT eno, ename,  dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT eno, ename, dname FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788;

SELECT eno, ename, dname, dno FROM employee, department
WHERE employee.dno = department.dno AND eno = 7788; -- ¿À·ù 

SELECT employee.eno, employee.ename, department.dname, employee.dno 
FROM employee, department
WHERE employee.dno = department.dno AND employee.eno = 7788;

SELECT eno, ename, dname, employee.dno FROM employee, department
WHERe employee.dno = department.dno AND eno = 7788;

SELECT * FROM employee, department WHERE employee.dno = department.dno;

SELECT * FROM employee, department WHERE employee.dno = department.dno
AND eno = 7369;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno; 

SELECT e.eno, e.ename, e.dno, d.dname FROM employee e, department d WHERE e.dno= d.dno;

SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno AND e.eno = 7788;

SELECT e.eno, e.ename, d.dname, dno FROM employee e natural join department d
WHERE e.eno = 9494;

SELECT e.ename, d.dname FROM employee e, department d
WHERE e.dno = d.dno AND e.ename LIKE '%A%';

SELECT * FROM employee natural join department;

SELECT * FROM employee natural join department
WHERE eno = 7788;

SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno)
WHERE eno = 7788;

SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
SELECT * FROM employee e JOIN department d ON e.dno = d.dno
WHERE eno = 7788;

SELECT e.eno, e.ename, d.dname, dno 
FROM employee e NATURAL JOIN department d 
WHERE e.eno = 7788;

SELECT e.eno, e.ename, d.dname, dno 
FROM employee e JOIN department d USING(dno) 
WHERE e.eno = 7788;

SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e JOIN department d 
ON e.dno = d.dno
WHERE e.eno = 7788;

SELECT e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';

SELECT ename, dname, loc FROM employee e JOIN department d 
ON e.dno= d.dno;

SELECT dno, job, loc FROM employee inner JOIN department
USING(dno)
WHERE dno = 10;

SELECT ename, dname, loc
FROM employee NATURAL JOIN department
WHERE commission > 0;

SELECT ename, job, dno, dname 
FROM employee NATURAL JOIN department 
WHERE loc ='NEW YORK';

