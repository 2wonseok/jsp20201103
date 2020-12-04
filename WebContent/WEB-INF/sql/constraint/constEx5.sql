-- 제약 사항 추가

DROP TABLE emp_copy;

CREATE TABLE emp_copy
AS
SELECT * FROM employee;

SELECT * FROM emp_copy;

SELECT * FROM user_constraints
WHERE table_name='EMPLOYEE';

SELECT * FROM user_constraints
WHERE table_name='EMP_COPY';

ALTER TABLE emp_copy
ADD PRIMARY KEY (eno);

DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS
SELECT * FROM department;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY (dno);

SELECT * FROM user_constraints
WHERE table_name = 'DEPT_COPY';

-- 책 (259p)
DROP TABLE emp_copy;

ALTER TABLE emp_copy
ADD constraint emp_copy_dno_fk
FOREIGN KEY (dno) REFERENCES dept_copy(dno);

SELECT * FROM user_constraints
WHERE table_name in ('EMP_COPY', 'DEPT_COPY');

-- 책 (260p)
ALTER TABLE emp_copy
MODIFY ename constraint emp_copy_ename_nn NOT NULL;

commit;

-- 제약 사항 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

SELECT * FROM user_constraints
WHERE table_name = 'EMP_COPY';

ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007387;

ALTER TABLE dept_copy
DROP CONSTRAINT DEPT_COPY_DNO_pk CASCADE; -- 종속 제약 조건까지 모두 제거

SELECT * FROM user_constraints
WHERE table_name in ('EMP_COPY', 'DEPT_COPY');
