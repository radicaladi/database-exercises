USE employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e';