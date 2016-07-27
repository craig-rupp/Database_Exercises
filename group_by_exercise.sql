use employees;

SELECT distinct title
FROM titles
ORDER by title asc;

SELECT emp_no, first_name, last_name, hire_date
FROM employees
where last_name LIKE 'E%E'
GROUP by last_name, first_name
ORDER BY last_name;
