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