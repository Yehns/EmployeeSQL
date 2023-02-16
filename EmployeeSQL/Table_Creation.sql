-- The following script will create tables for all the CSV files

-- Create a table for DEPARTMENTS
create table departments (
	dept_no CHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- Create a table for TITLES
create table titles (
	title_id CHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR (30)
);
-- Create table for EMPLOYEES
	-- Create the necessary PRIMARY KEYS (emp_no) to identify unique values for each table and FOREGIN KEYS (titles_id) to link data between two tables
create table employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title CHAR(5),
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30),
	hire_date DATE,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

-- Create a table for DEPARTMENT EMPLOYMENT 

create table dept_emp (
	emp_no INT, 
	dept_no CHAR(4),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);
	
-- Create a table for DEPARTMENT MANAGERS

create table dept_manager (
	dept_no CHAR(4),
	emp_no INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);
	
-- Create a table for SALARIES 
create table salaries (
	emp_no INT,
	salary FLOAT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;


	
