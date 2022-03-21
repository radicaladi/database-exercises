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