USE employees;

# what are the top three most common job titles?
SELECT title, COUNT(*)
FROM titles
GROUP BY title
ORDER BY COUNT(*) DESC
LIMIT 3;

# what is the lowest employee number for the first senior engineers in the company?
SELECT emp_no, title, from_date
FROM titles
WHERE title = 'Senior Engineer'
ORDER BY emp_no, from_date;
#  10001

# what is the most common ‘from date’ for job titles? for staff only?
SELECT title, from_date, COUNT(from_date)
FROM titles
GROUP BY title, from_date
ORDER BY COUNT(from_date) DESC;
#  staff = 20 april 1990
# most common = 25 oct 1998

# what is the highest employee number for an engineer?
SELECT emp_no
FROM titles
WHERE title = 'Engineer'
ORDER BY emp_no desc;
# emp_no 499999

# what are the names of the 10 most recently hired employees who identified as female in the company?
SELECT hire_date, gender, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE gender = 'f'
ORDER BY hire_date DESC
LIMIT 10;
# Hideyuki, Volkmar, Jaana, Ennio, Xuejun, Seshu, Randi, Adil, Manton, Garnik

# the first 10?
SELECT hire_date, gender, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE gender = 'f'
ORDER BY hire_date ASC
LIMIT 10;
#  Peternela, Shirish, Krassimir, Tonny, Isamu, Gian, Zdislav, Shir, Divier, Shounak

# what is the most common birthday?
SELECT birth_date, COUNT(*)
FROM employees
GROUP BY birth_date
ORDER BY COUNT(*) DESC;
#  08 March 1952 (95)

# what is the most common  birthday for employees who identified as female?
SELECT birth_date, COUNT(*)
FROM employees
WHERE gender = 'f'
GROUP BY birth_date
ORDER BY COUNT(*) DESC;
# 12 Oct 1953 (49)

# how about vs. those who identified as male?
SELECT birth_date, COUNT(*)
FROM employees
WHERE gender = 'M'
GROUP BY birth_date
ORDER BY COUNT(*) DESC;
# 11 July 1953 (63)