-- KEY : 각 레코드(row)를 유일하게 구분할 수 있는 컬럼

-- PRIMARY KEY : 각 레코드를 유일하게 구분하는 컬럼
-- 유의할 점 : 변하지 않는 값
--  -> 키 컬럼 생성 추천
--     자동으로 1씩 늘어나는 정수
-- : NOT NULL UNIQUE

CREATE TABLE const05 (
    email VARCHAR2(30),
    name VARCHAR2(30),
    ssn VARCHAR2(30),
    address VARCHAR2(30),
    birth DATE
);

SELECT * FROM const05;

CREATE TABLE const06 (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30)
);

INSERT INTO const06 (id, name)
VALUES (1, 'a');
--INSERT INTO const06 (id, name)
--VALUES (null, 'b');
--INSERT INTO const06 (id, name)
--VALUES (1, 'c');
INSERT INTO const06 (id, name)
VALUES (2, 'd');

SELECT * FROM const06;
commit;

-- FOREIGN KEY(외래키, 참조키)

CREATE TABLE const07_emp
AS
SELECT * FROM employee;

CREATE TABLE const07_dep
AS
SELECT * FROM department;

SELECT eno, ename, dno FROM const07_emp;
SELECT * FROM const07_dep;
INSERT INTO const07_emp (eno, ename, dno)
VALUES (8787, 'ABC', 50);
commit;

CREATE TABLE const08_dep (
    dno NUMBER(2) PRIMARY KEY,
    ename VARCHAR2(14),
    loc VARCHAR2(13)
);

INSERT INTO const08_dep
SELECT * FROM department;
commit;

SELECT * FROM const08_dep;

CREATE TABLE const08_emp (
    name VARCHAR2(30),
    dno NUMBER(2) REFERENCES const08_dep(dno)
);    
INSERT INTO const08_emp (name, dno)
VALUES ('a', 10);
--INSERT INTO const08_emp (name, dno)
--VALUES ('b', 50);
INSERT INTO const08_emp (name, dno)
VALUES ('c', null);

commit;
SELECT * FROM const08_emp;