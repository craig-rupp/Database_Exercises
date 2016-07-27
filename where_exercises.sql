use employees;
SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE emp_no >= 10200
AND (
	first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya'
); 

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT emp_no, last_name, hire_date, birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name, gender, hire_date
FROM employees
WHERE last_name LIKE '%q%';