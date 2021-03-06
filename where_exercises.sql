use employees;
SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE gender = 'M'
AND (
	first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya'
); 

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE last_name LIKE 'E%'
and last_name LIKE '%E';

SELECT emp_no, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
AND birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%';

-- SELECT emp_no, last_name, hire_date, birth_date
-- FROM employees
-- WHERE birth_date LIKE '%-12-25';

-- SELECT emp_no, first_name, last_name, gender, hire_date
-- FROM employees
-- WHERE last_name LIKE '%q%';