SELECT * FROM employee;
-- table 생성

CREATE TABLE table1 (
 col1, col2, col3
);

-- DATA TYPE 
-- 수, 문자열, 날짜시간

-- 수 NUBMER(값)
--  ex) 값이 3이면 1000이상 표시 안됨
-- NUMBER(값1, 값2)
--  ex) 값1은 총길이, 값2는 소수점밑의 길이
-- NUMBER(3, 2) : 10이상 표시 못함

-- 문자열 
-- VARCHAR2(값) : byte 수
-- CHAR(값) : 고정 길이 : byte 수


-- 날짜시간 DATE

CREATE TABLE table1 (
 col1 NUMBER(3, 1),  -- 3의 길이고 소수 밑 1자리
 col2 VARCHAR2(6),   -- 가변길이 문자열 6bytes까지
 col3 CHAR(4),       -- 고정길이 문자열 4bytes까지
 col4 DATE           -- 날짜 시간
);

SELECT * FROM table1;
DESC table1;

CREATE TABLE dept (
       dno number(2),
       dname varchar2(14),
       loc varchar2(13));
       
CREATE TABLE dept_second
as
SELECT *
FROM department;