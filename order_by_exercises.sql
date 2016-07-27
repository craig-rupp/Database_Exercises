use employees;

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE gender = 'M'
and (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
order by first_name asc, last_name asc;