USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
# JOIN dept_emp as de
#   ON de.emp_no = e.emp_no
# JOIN departments as d
#   ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees as e
         JOIN dept_emp as employee_no ON employee_no.emp_no = e.emp_no
         JOIN dept_manager as manager ON manager.emp_no = employee_no.emp_no
         JOIN departments as d ON manager.dept_no = d.dept_no;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees as e
         JOIN dept_emp as employee_no ON employee_no.emp_no = e.emp_no
         JOIN dept_manager as manager ON manager.emp_no = employee_no.emp_no
         JOIN departments as d ON manager.dept_no = d.dept_no
WHERE e.gender = 'F';

SELECT title, COUNT(titles.emp_no)
FROM titles
         JOIN dept_emp AS de ON titles.emp_no = de.emp_no
         JOIN departments as dept ON de.dept_no = dept.dept_no
WHERE dept.dept_name = 'Customer Service'
  AND titles.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY titles.title;

SELECT  d.dept_name AS department_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager, s.salary AS salary
FROM departments as d
         JOIN dept_manager ON dept_manager.dept_no = d.dept_no
         JOIN employees as e ON e.emp_no = dept_manager.emp_no
         JOIN salaries as s ON e.emp_no = s.emp_no
WHERE dept_manager.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Manager'
FROM employees AS e
         JOIN dept_emp ON e.emp_no = dept_emp.emp_no
         JOIN departments as d ON d.dept_no = dept_emp.dept_no
         JOIN dept_manager ON dept_emp.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
  AND dept_emp.to_date = '9999-01-01'
ORDER BY d.dept_name, e.emp_no;