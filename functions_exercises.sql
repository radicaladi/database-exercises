USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'e%e';


SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999;


SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;


SELECT DATEDIFF(NOW(), hire_date)
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999;