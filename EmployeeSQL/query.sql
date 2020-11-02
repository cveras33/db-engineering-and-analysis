--List the following details of each employee: employee number, 
--last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
ALTER TABLE employees ALTER COLUMN hire_date TYPE DATE 
using to_date(hire_date, 'MM-DD-YYYY');

SELECT first_name, last_name, hire_date
FROM employees
WHERE extract(year FROM hire_date) = 1986;


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name 
FROM departments AS d
INNER JOIN dept_manager as m 
ON d.dept_no = m.dept_no
INNER JOIN employees AS e
ON m.emp_no = e.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT d.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
INNER JOIN dept_emp as de
ON d.dept_no = de.dept_no
INNER JOIN employees AS e
ON de.emp_no = e.emp_no;

--List first name, last name, and sex for employees whose first name is 
--"Hercules" and last names begin with "B."
SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp AS de 
INNER JOIN employees AS e
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
on de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp AS de 
INNER JOIN employees AS e
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
on de.dept_no = d.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees 
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
