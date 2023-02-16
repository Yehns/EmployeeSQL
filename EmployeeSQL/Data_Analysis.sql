-- The following script will cover the Data Analysis of the generated tables 

-- List the employee number, last name, first name, sex and salary of each employee

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY emp_no ASC;

-- List the first name, last name and hire date for the employees who were hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986'

-- List the manager of each department number, department name, employee number, last name and first name
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager m
JOIN employees e
ON m.emp_no = e.emp_no
JOIN departments d
ON m.dept_no = d.dept_no;

-- List the first name, last name and sex of each employee whose first name is "Hercules" and whose last name begind wit h the letter B
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name iLIKE 'B%';

-- List each employee in the sales department, including their employee number, last name, first name and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN departments d
ON e.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no ASC;


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)