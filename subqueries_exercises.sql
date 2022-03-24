USE employees;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date FROM employees
    WHERE hire_date = '1990-10-22'
);