-- 기본값 갖기(DEFAULT)
CREATE TABLE const12 (
    id NUMBER DEFAULT 0,
    name VARCHAR2(30)
);
INSERT INTO const12 (id, name)
VALUES (3, 'jone');
INSERT INTO const12 (name)
VALUES ('jane');
INSERT INTO const12 (id, name)
VALUES (null, 'jane');


SELECT * FROM const12;

SELECT * FROM user_constraints
WHERE table_name = 'CONST12';

SELECT * FROM USER_TAB_COLUMNS
WHERE table_name = 'CONST12';