CREATE TABLE post (
    title VARCHAR2(255),
    body VARCHAR2(255)
);
INSERT INTO post
            VALUES ('abc', 'def');
DELETE post WHERE title = 'abc';

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

INSERT INTO post (id, title, body)
            VALUES (1, 'abc', 'def');
INSERT INTO post (id, title, body)
            VALUES (2, 'abc', 'def');

DELETE post WHERE id = 1;            

--       
SELECT MAX(id) FROM post;
INSERT INTO post (id, title, body)
            VALUES ('abc', 'def');
            
SELECT * FROM post;
commit;

-- SEQUENCE
CREATE SEQUENCE my_seq; -- 1부터 1씩 증가

DELETE post;
COMMIT;

INSERT INTO post (id, title, body)
            VALUES (my_seq.nextval, 'abc', 'def');

SELECT * FROM post;

--
CREATE SEQUENCE my_seq2
START WITH 100;
INSERT INTO post (id, title, body)
            VALUES (my_seq2.nextval, 'abc', 'def');
            
CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100;
INSERT INTO post (id, title, body)
            VALUES (my_seq3.nextval, 'abc', 'def');
            
SELECT * FROM post;

-- 혼자해보기 1~2번
-- 1번
CREATE SEQUENCE emp_seq
       START WITH 1
       INCREMENT BY 1
       MAXVALUE 100000;

-- 2번
CREATE TABLE emp01 (
    empno NUMBER(4) PRIMARY KEY,
    ename VARCHAR2(10),
    hiredate DATE
);

INSERT INTO emp01
            VALUES(emp_seq.NEXTVAL, 'abc', SYSDATE);
            
SELECT * FROM emp01;

SELECT * FROM user_sequences;

SELECT my_seq2.currval FROM dual;
SELECT my_seq2.nextval FROM dual;

-- 시퀀스 수정
ALTER SEQUENCE my_seq3
      INCREMENT BY 1000;
SELECT my_seq3.currval FROM dual;
SELECT my_seq3.nextval FROM dual;

-- 시퀀스 삭제
DROP SEQUENCE my_seq;
DROP SEQUENCE my_seq2;

CREATE TABLE t1;
CREATE SEQUENCE s1;

CREATE TABLE t2;
CREATE SEQUENCE s2;

-- 자동 증가 컬럼

CREATE TABLE t1 (
    id NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1),
    name VARCHAR2(30)
);

INSERT INTO t1 (name) VALUES ('leewonseok');
INSERT INTO t1 (name) VALUES ('wonseok');

SELECT * FROM t1;

SELECT * FROM user_sequences;

---------------- 

CREATE SEQUENCE lws_seq
       START WITH 1
       INCREMENT BY 1;
       
CREATE TABLE lws_table (
    id NUMBER DEFAULT lws_seq.nextval PRIMARY KEY,
    name VARCHAR2(30)
);

INSERT INTO lws_table (name) VALUES ('이원석');
SELECT * FROM lws_table;

SELECT * FROM user_sequences;

SELECT * FROM user_constraints
WHERE table_name in ('LWS_TABLE');