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

--For Functions Organize first name by gender count and gender
SELECT COUNT(*), gender 
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER by gender asc;

--Combine First and Last Name in Single Column
SELECT CONCAT(first_name, ' ', last_name), birth_date
from employees
where first_name LIKE 'e%'
and last_name like '%e'
ORDER BY birth_date desc;

--How many days (DateDIFF) employees have been working born on 12/25 in the 90's
SELECT emp_no, first_name, last_name, birth_date, DATEDIFF(curdate(), hire_date)
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25'
ORDER by DATEDIFF(curdate(), hire_date) desc;

--Add group by clause 'q' not like 'qu' find count to see employees who share last_name Q but no Qu
SELECT count(last_name), first_name, last_name, gender
FROM employees
where last_name NOT like '%qu'
AND last_name LIKE 'q%'
GROUP by first_name, last_name
ORDER BY count(last_name);

