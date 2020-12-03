-- 제약 사항 Constraint
-- NOT NULL : 컬럼의 값이 null은 입력이 안됨
-- UNIQUE : 유일한 값만 저장
-- CHECK : 지정된 값(범위)만 가능
-- FOREIGN KEY(외래키, 참조키)
--  : 다른 table에 있는 값만 가능
-- PRIMARY KEY (주요키, 주키, 키) 
--  : NOT NULL + UNIQUE

-- NOT NULL
CREATE TABLE const01 (
    name VARCHAR2(30) NOT NULL,
    age NUMBER
);    
INSERT INTO const01
VALUES ('abc', 30);
--INSERT INTO const01
--VALUES (null, 40);
INSERT INTO const01
VALUES ('a', null);
--INSERT INTO const01 (age)
--VALUES (50);
INSERT INTO const01
VALUES (' ', 30);

SELECT * FROM const01;

-- UNIQUE
DROP TABLE conte02;

CREATE TABLE const02 (
    email VARCHAR2(30) UNIQUE,
    name VARCHAR2(30)
);


INSERT INTO const02 (email, name)
VALUES ('a', 'b');
INSERT INTO const02 (email, name)
VALUES ('a', 'c');
INSERT INTO const02 (email, name)
VALUES ('c', 'b');
INSERT INTO const02 (name)
VALUES ('c');

SELECT * FROM const02;

-- 책 (250p)
CREATE TABLE customer (
    id VARCHAR2(20) not null,
    pwd VARCHAR2(20) not null,
    name VARCHAR2(20) not null,
    phone VARCHAR2(30),
    address VARCHAR2(100)
);

--INSERT INTO customer 
--VALUES (null, null, null, '010-1111-1111', 'seoul');

-- 책 (251p)
CREATE TABLE customer (
    id VARCHAR2(20) UNIQUE,
    pwd VARCHAR2(20) not null,
    name VARCHAR2(20) not null,
    phone VARCHAR2(30),
    address VARCHAR2(100)
);
INSERT INTO customer 
VALUES (null, 1234, '이원석', '010-1111-1111', 'seoul');
SELECT * FROM customer;
DESC customer;

-- CHECK
CREATE TABLE const03 (
    age NUMBER CHECK (age > 0)
);
ALTER TABLE const03 ADD name VARCHAR2(30);
INSERT INTO const03 (name, age)
VALUES ('a', 30);
INSERT INTO const03 (name, age)
VALUES ('b', 0);
INSERT INTO const03 (name)
VALUES ('c');

commit;
SELECT * FROM const03;

-- 제약사양 여러 개 사용 가능
CREATE TABLE const04 (
    email VARCHAR2(30) NOT NULL UNIQUE CHECK(email LIKE '%@%'),
    name VARCHAR2(30)
);

INSERT INTO const04 (email, name)
VALUES (null, 'a');
INSERT INTO const04 (email, name)
VALUES ('a', 'b');
INSERT INTO const04 (email, name)
VALUES ('a@g', 'c');
INSERT INTO const04 (email, name)
VALUES ('a@g', 'd');

SELECT * FROM const04;
commit;
