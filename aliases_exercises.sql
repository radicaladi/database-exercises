USE employees;

SELECT CONCAT(last_name, ', ', first_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 10;
