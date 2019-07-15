-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, last_name, first_name, gender, salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY last_name, first_name

-- 2. List employees who were hired in 1986.
SELECT emp_no, last_name, first_name, hire_date
FROM employees e
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY hire_date, last_name, first_name

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, dept_name, e.emp_no, last_name, first_name, from_date, to_date
FROM employees e
INNER JOIN dept_manager dm
ON e.emp_no = dm.emp_no
INNER JOIN departments d
ON dm.dept_no = d.dept_no
ORDER BY last_name, first_name

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
ORDER BY last_name, first_name

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT emp_no, last_name, first_name, dept_name
FROM employees e
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'
ORDER BY last_name, first_name

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales'
ORDER BY last_name, first_name

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE dept_name IN ('Sales', 'Development')
ORDER BY last_name, first_name

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(emp_no) AS lncount
FROM employees
GROUP BY last_name
ORDER BY lncount DESC
