SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;

ALTER TABLE employees ALTER COLUMN hire_date TYPE DATE 
using to_date(hire_date, 'MM-DD-YYYY');

SELECT first_name, last_name, hire_date
FROM employees
WHERE extract(year FROM hire_date) = 1986;

