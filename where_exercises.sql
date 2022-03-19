USE employees;

SELECT first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya')
   OR first_name = 'Maya'
    AND gender = 'male';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%e%';