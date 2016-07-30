use join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('Jay', 'Jay@jaymail.com', 2),
('Scott', 'Scott@smail.com', 2),
('Rob', 'rob@rrexpress.com', 2),
('Kelly', 'kelly@piped.com', null);


--Join Users/Roles
SELECT users.name as user_name, roles.name as role_name
FROM USERS
JOIN roles on users.role_id = roles.id;


-- LEFT JOIN
SELECT count(role_id), users.name as user_name, roles.name as role_name
FROM users
LEFT join roles ON users.role_id = roles.id
GROUP BY role_name, user_name
ORDER by count(role_id);

--RIGHT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

--Name of current manager

select departments.dept_name, concat(employees.first_name, " ",  employees.last_name) 
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on employees.emp_no = dept_manager.emp_no
where to_date > curdate();

-- Departments Managed By Women
select departments.dept_name, concat(employees.first_name, " ", employees.last_name) as full_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on employees.emp_no = dept_manager.emp_no
where to_date > curdate() and employees.gender = 'F';


--Current titles of employees in customer service
SELECT title AS Title, COUNT(title)
FROM titles AS t
JOIN dept_emp AS de
   ON de.emp_no = t.emp_no
JOIN departments AS d
   ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY title;

--Find Current Salary
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Current Manager', s.salary as 'Salary'
FROM departments as d
JOIN dept_manager as dm on d.dept_no = dm.dept_no
JOIN employees as e on dm.emp_no = e.emp_no
JOIN salaries as s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
and s.to_date = '9999-01-01';










