-- NOT NULL
-- CHECK
-- UNIQUE
-- FOREIGN KEY
-- PRIMARY KEY

SELECT * FROM user_constraints;

-- 책 (252p)
CREATE TABLE customer (
    id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE,
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20)CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100)
);

SELECT * FROM user_constraints WHERE constraint_name LIKE '%CUSTOMER%';

-- 책 (253p)
DROP TABLE customer;
CREATE TABLE customer (
    id VARCHAR(20),
    pwd VARCHAR(20) constraint customer_pwd_nn NOT NULL,
    name VARCHAR(20) constraint customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR(100),
    constraint customer_id_pk PRIMARY KEY(id)
);

SELECT * FROM user_constraints WHERE constraint_name LIKE '%CUSTOMER%';

-- 책 (255p)
CREATE TABLE emp_second (
    eno NUMBER(4) CONSTRAINT emp_second_eno_pk PRIMARY KEY,
    ename VARCHAR2(10),
    JOB VARCHAR2(9),
    dno NUMBER(2) CONSTRAINT emp_second_dno_fk REFERENCES department
);

INSERT INTO emp_second
                VALUES (8000, '윤정화', 'FC', 60); --무결성 확인
                
-- 책 (256p)
DROP TABLE emp_second;
CREATE TABLE emp_second (
    eno NUMBER(4) CONSTRAINT emp_second_eno_pk PRIMARY KEY,
    ename VARCHAR2(10),
    salary NUMBER(7, 2) CONSTRAINT emp_second_salary_min CHECK (salary > 0)
);

INSERT INTO emp_second 
            VALUES (8000, '윤정화', -200);
