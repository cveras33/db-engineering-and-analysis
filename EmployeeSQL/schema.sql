-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "Emp_No" INTEGER   NOT NULL,
    "Emp_Title_ID" VARCHAR(10)   NOT NULL,
    "Birth_date" VARCHAR(12)   NOT NULL,
    "First_Name" VARCHAR(20)   NOT NULL,
    "Last_Name" VARCHAR(20)   NOT NULL,
    "Sex" VARCHAR(2)   NOT NULL,
    "Hire_Date" VARCHAR(12)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Titles" (
    "Title_ID" VARCHAR(10)   NOT NULL,
    "Title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);

CREATE TABLE "Salaries" (
    "Emp_No" INTEGER   NOT NULL,
    "Salary" INTEGER   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Departments" (
    "Dept_No" VARCHAR(10)   NOT NULL,
    "Dept_Name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Dept_Manager" (
    "Emp_No" INTEGER   NOT NULL,
    "Dept_No" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Dept_Emp" (
    "Emp_No" INTEGER   NOT NULL,
    "Dept_No" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Dept_Emp" PRIMARY KEY (
        "Emp_No","Dept_No"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_Title_ID" FOREIGN KEY("Emp_Title_ID")
REFERENCES "Titles" ("Title_ID");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

SELECT * FROM Employees;
SELECT * FROM Titles; 
SELECT * FROM Salaries;
SELECT * FROM Dept_Emp; 
SELECT * FROM Departments; 
SELECT * FROM Dept_Manager;
