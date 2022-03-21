USE employees;

SELECT first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya')
   OR first_name = 'Maya'
    AND gender = 'male'
ORDER BY last_name DESC, first_name DESC;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT CONCAT(last_name, ' ', first_name)
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;