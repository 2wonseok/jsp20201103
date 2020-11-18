SELECT e1.eno, e1.manager, e2.eno 
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.eno, e1.manager, e2.eno 
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);

SELECT e1.eno, e1.manager, e2.eno 
FROM employee e1, employee e2
WHERE e1.manager(+) = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 JOIN employee e2
ON e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.eno, e1.manager, e2.eno
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

SELECT e1.eno, e1.manager, e2.eno
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno;

SELECT e1.eno, e1.manager, e2.eno
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno;

SELECT e1.ename ||'의 직속 상관은 '|| e2.ename
FROM employee e1 JOIN employee e2
ON e1.manager = e2.eno(+);

SELECT e1.ename ||'의 직속상관은 '|| e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

SELECT emp.ename "Employee", emp.manager "Emp#",
       mgr.eno "Manager", mgr.ename "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager = mgr.eno
AND emp.eno = 7566;

SELECT emp.ename "Employee", emp.manager "Emp#",
       mgr.eno "Manager", mgr.ename "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager = mgr.eno(+)
ORDER BY emp.eno DESC;

SELECT me.ename "이름", me.dno "부서번호", other.ename "동료"
FROM employee me, employee other
WHERE me.dno = other.dno
AND me.ename = 'SCOTT' 
AND other.ename != 'SCOTT';

SELECT other.ename, other.hiredate
FROM employee ward, employee other
WHERE other.hiredate > ward.hiredate
AND ward.ename = 'WARD'
ORDER BY hiredate;

SELECT other.ename, other.hiredate, mgr.ename, mgr.hiredate
FROM employee mgr, employee other
WHERE other.manager = mgr.eno
AND other.hiredate <= mgr.hiredate;

SELECT * FROM employee;

SELECT e.eno, e.ename, e.hiredate, e.salary, d.dname 
FROM employee e, department d 
WHERE e.dno = d.dno 
AND eno =7369;

SELECT * FROM salgrade;

SELECT e.eno, e.ename, e.hiredate, e.salary, d.dname, e.job, s.grade 
FROM employee e, department d, salgrade s 
WHERE e.dno = d.dno 
AND e.salary BETWEEN s.losal AND s.hisal
AND eno =7782;

SELECT e.eno, e.ename, e.hiredate, e.salary, d.dname, e.job, s.grade 
FROM employee e, department d, salgrade s 
WHERE e.dno = d.dno 
AND e.salary BETWEEN s.losal AND s.hisal 
AND eno = 1234;

SELECT * FROM employee WHERE eno = 7839;
SELECT * FROM employee;
SELECT * FROM department;

update employee set dno = 50 WHERE eno = 1234;
commit;

SELECT emp.ename "Employee", emp.manager "Emp#",
       mgr.eno "Manager", mgr.ename "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager = mgr.eno
AND emp.eno = 7566;

SELECT e.eno, e.ename, m.eno, m.ename MANAGER, e.hiredate, e.salary, d.dname, e.job, s.grade 
FROM employee e, employee m, department d, salgrade s 
WHERE e.dno = d.dno 
AND e.salary BETWEEN s.losal AND s.hisal 
AND e.manager = m.eno
AND e.eno = 1234;

SELECT e.eno, e.ename, m.eno, m.ename MANAGER, e.hiredate, e.salary, d.dname, e.job, s.grade 
FROM employee e, employee m, department d, salgrade s 
WHERE e.dno = d.dno 
AND e.salary BETWEEN s.losal AND s.hisal 
AND e.manager = m.eno(+) 
AND e.eno =7839;