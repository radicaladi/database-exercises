USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 31 OFFSET 17;
# emp_no(s) occur at 1, 19, and 31