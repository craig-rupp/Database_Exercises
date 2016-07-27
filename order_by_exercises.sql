use employees;

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE gender = 'M'
and (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
order by last_name asc;


SELECT emp_no, last_name first_name
FROM employees
WHERE last_name LIKE 'E%'
or last_name like '%e'
order by emp_no desc;

SELECT emp_no, last_name, first_name, birth_date, hire_date
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25'
order by birth_date asc, hire_date desc;