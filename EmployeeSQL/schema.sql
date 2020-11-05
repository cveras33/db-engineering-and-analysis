DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(30)
);

SELECT * FROM titles;

DROP TABLE departments;

CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL, 
	dept_name VARCHAR(30)
);

SELECT * FROM departments;

DROP TABLE employees;

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY NOT NULL, 
	emp_title_id VARCHAR(10),
	birth_date VARCHAR(12),
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(10),
	hire_date VARCHAR(12)
);

SELECT * FROM employees;

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL, 
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no)
);

SELECT * FROM dept_emp;

DROP TABLE salaries; 

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY(emp_no, salary)
);

SELECT * FROM salaries; 

DROP TABLE dept_manager; 

CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL, 
	emp_no INTEGER NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);

SELECT * FROM dept_manager; 

