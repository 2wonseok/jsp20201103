SELECT ROUND(345.1456) FROM dual;
SELECT ROUND(345.1456, 0) FROM dual;
SELECT ROUND(345.1456, 1) FROM dual;
SELECT ROUND(345.1456, 2) FROM dual;
SELECT ROUND(345.1456, -1) FROM dual;
SELECT ROUND(345.1456, -2) FROM dual;

SELECT 98.7654,
    ROUND(98.7654),
    ROUND(98.7654, 2),
    ROUND(98.7654, -1)
FROM dual;

SELECT 98.7654,
    TRUNC(98.7654),
    TRUNC(98.7654, 2),
    TRUNC(98.7654, -1)
FROM dual;

SELECT MOD(31, 2),
       MOD(31, 5),
       MOD(31, 8)
FROM dual;

SELECT ename, salary, MOD(salary, 500) FROM employee;
SELECT CEIL(345.1456) FROM dual;
SELECT ABS(-56) FROM dual;
SELECT POWER(3, 3) FROM dual;
SELECT SQRT(4) FROM dual;
