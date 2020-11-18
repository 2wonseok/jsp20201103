SELECT * FROM employee e, department d;

SELECT * FROM employee e1, employee e2;

SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno;

SELECT * FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT employees.ename "����̸�", manager.ename "���ӻ���̸�"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT employees.ename || '�� ���� ����� ' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno;

SELECT m.ename
FROM employee e, employee m
WHERE e.manager = m.eno
AND e.eno = 7788;

SELECT e.ename
FROM employee e, employee m
WHERE e.manager = m.eno
AND m.eno = 7566;