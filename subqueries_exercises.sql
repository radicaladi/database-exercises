USE employees;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date FROM employees
    WHERE hire_date = '1990-10-22'
);

SELECT *
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);