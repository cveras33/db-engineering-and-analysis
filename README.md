# SQL Homework - Employee Database: A Mystery in Two Parts

## Background ## 

## Table of Contents ## 
* [Data Modeling](#data-modeling)
* [Data Engineering](#data-engineering)
* [Data Analysis](#data-analysis)
* [Bonus](#bonus)

## Data Modeling ##
The below ERD was created using [QuickDBD](https://app.quickdatabasediagrams.com/#/). 

![ERD Image](https://github.com/cveras33/sql-challenge/blob/main/EmployeeSQL/ERD/ERD.png)

## Data Engineering ##

A schemata was created for each of the six CSV files (which can be found in the `data` folder), with specified data types, primary keys, foreign keys, and any other necessary constraints. A screenshot of the first 10 rows of each table is provided below in order to give an idea of the data being looked at. The schemata was created by exporting the `physical_erd.txt` file from [QuickDBD](https://app.quickdatabasediagrams.com/#/), and uploading the file to PostgreSQL. 

#### Employees Table ####
![Emoloyees Table](https://github.com/cveras33/sql-challenge/blob/main/Output/employees_table.png)

#### Titles Table ####
![Titles Table](https://github.com/cveras33/sql-challenge/blob/main/Output/titles_table.png)

#### Salaries Table ####
![Salaries Table](https://github.com/cveras33/sql-challenge/blob/main/Output/salaries_table.png)

#### Departments Table ####
![Departments Table](https://github.com/cveras33/sql-challenge/blob/main/Output/departments_table.png)

#### Department Manager Table ####
![Dept Manager Table](https://github.com/cveras33/sql-challenge/blob/main/Output/dept_manager_table.png)

#### Department Employee Table ####
![Dept Emp Table](https://github.com/cveras33/sql-challenge/blob/main/Output/dept_emp_table.png)

## Data Analysis ##

Once the database was created, by the above data engineering, the eight following queries were run in order to gather additional information about employees. 

Employee number, last name, first name, sex, and salary of each employee:
![Q1](https://github.com/cveras33/sql-challenge/blob/main/Output/q1.png)

First name, last name, and hire date for employees who were hired in 1986:
![Q2](https://github.com/cveras33/sql-challenge/blob/main/Output/q2.png)

The manager of each department along with the department number, department name, the manager's employee number, last name, first name:
![Q3](https://github.com/cveras33/sql-challenge/blob/main/Output/q3.png)

The department of each employee with their employee number, last name, first name, and department name:
![Q4](https://github.com/cveras33/sql-challenge/blob/main/Output/q4.png)

First name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B":
![Q5](https://github.com/cveras33/sql-challenge/blob/main/Output/q5.png)

All employees in the Sales department, including their employee number, last name, first name, and department name.
![Q6](https://github.com/cveras33/sql-challenge/blob/main/Output/q6.png)

All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
![Q7](https://github.com/cveras33/sql-challenge/blob/main/Output/q7.png)

In descending order, the frequency count of employee last names, i.e., how many employees share each last name:
![Q8](https://github.com/cveras33/sql-challenge/blob/main/Output/q8.png)

## Bonus ##

The SQL database is then imported into Pandas using SQLAlchemy, and the following data visualizations are created. 

![Histogram](https://github.com/cveras33/sql-challenge/blob/main/Output/salary_histogram.png)

![Bins](https://github.com/cveras33/sql-challenge/blob/main/Output/salary_bins.png)

The above histogram visualizes the most common salary ranges for employees. This histogram does NOT include manager salaries. According to the histogram, $40,000-$50,000/year is the most common salary range, while $110,000-$120,000/year is the least common salary range. This histogram also shows that as the salary range increases, less and less employees fall within that salary range. I've also placed each employee in a salary bin, in order to see exactly how many employees are in which salary range. The bins with the number of employees within that salary range can be seen above, following the histogram. 

![Bar Chart](https://github.com/cveras33/sql-challenge/blob/main/Output/avg_salary_by_title.png)

![Salary by Title](https://github.com/cveras33/sql-challenge/blob/main/Output/average_salary.png)

The above bar chart visualizes the average salary by position, followed by a table with the numeric averages printed out. 

### Status ### 
Project is *complete*. 
