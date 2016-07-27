use employees;

SELECT emp_no, first_name, last_name, gender
FROM employees
GROUP BY last_name
ORDER by last_name DESC
LIMIT 10;

SELECT emp_no, last_name, first_name, birth_date, hire_date
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25'
order by birth_date asc, hire_date desc
LIMIT 5;


SELECT emp_no, last_name, first_name, birth_date, hire_date
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25'
order by birth_date asc, hire_date desc
LIMIT 5 OFFSET 45;
