SELECT * FROM employee;
SELECT * FROM BONUS;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ENAME FROM employee;
SELECT eno,ename from employee;
SELECT ename,eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename, salary, salary*12 AS ���� FROM employee;
SELECT ename, salary, salary*12 ���� FROM employee;
-- �� �� �ּ�
/*
������ �ּ�
*/

SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
SELECT ename, salary, commission, NVL(commission, 0) FROm employee;
SELECT ename, salary + NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) �� FROM employee;

SELECT DISTINCT(dno) From employee;
SELECT DISTINCT dno From employee;

-- ��� INSERT INTO employee  VALUES (9494, 'wonseok', 'programer', '9495', '', '777', '', '30');

-- INSERT INTO employee  VALUES (1234, 'leewonseok', 'baaaaam', '5678', '94/03/26', '350', '', '20');

-- ���� UPDATE employee SET HIREDATE = '94/03/26' WHERE ENAME = 'wonseok';

-- ���� ������ ��ȸ SELECT * FROM employee WHERE ENAME = 'wonseok';

-- ���� DELETE FROM employee WHERE ENAME = 'wonseok2';

