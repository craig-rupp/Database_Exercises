use employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = '101010'
);

SELECT employees.emp_no, employees.first_name, employees.last_name, titles.title
FROM titles
JOIN employees
on titles.emp_no = employees.emp_no
where employees.emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
);

SELECT Title
from titles
where emp_no IN(
	SELECT emp_no
	from employees
	where first_name = 'Aamod'
);

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
) AND gender = 'F';


SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = "F"
	)
);

SELECT AVG(salary), employees.first_name, employees.last_name, employees.gender
FROM salaries
JOIN employees
on salaries.emp_no = employees.emp_no
GROUP by salary ASC;

