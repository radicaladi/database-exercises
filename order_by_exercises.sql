USE employees;
SELECT first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya')
   OR first_name = 'Maya'
    AND gender = 'male'
ORDER BY first_name, last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';