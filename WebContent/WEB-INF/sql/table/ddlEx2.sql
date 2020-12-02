-- 테이블 변경
-- ALTER TABLE 
-- 컬럼 추가, 데이터 타입 변경, 삭세

-- 컬럼 추가
-- ALTER TABLE table_name ADD (new_col DATATYPE);

-- 책 (210p)
ALTER TABLE dept20
ADD (birth DATE);
DESC dept20;

-- 컬럼 변경
-- ALTER TABLE table_name MODIFY (col_name datatype);

-- 책 (211p)
ALTER TABLE dept20 
MODIFY (ename VARCHAR2(30));

/*
INSERT INTO dept20 (ename) VALUES ('abcdefghij');
SELECT * FROM dept20;
commit;
*/

-- 컬럼 삭제
-- ALTER TABLE table_name DROP COLUMN col_name;

-- 책 (212p)
ALTER TABLE dept20
DROP COLUMN ename;
SELECT * FROM dept20;
DESC dept20;

