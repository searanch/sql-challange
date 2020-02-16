-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.gender,
    s.salary
FROM employees as e
JOIN salaries as s 
ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no;

--  2. List employees who were hired in 1986.
SELECT * FROM employees WHERE hire_date LIKE '1986%';

 --3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.   

SELECT 
    d.dept_no,
    d.dept_name,
    dm.emp_no,
    e.last_name,
    e.first_name,
    dm.from_date,
    dm.to_date
FROM dept_manager dm
JOIN departments d USING (dept_no)
JOIN employees e USING (emp_no);

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name

FROM employees as e 
JOIN dept_emp as de
on(e.emp_no =de.emp_no)
JOIN departments as d
on (d.dept_no = d.dept_no)
ORDER BY e.emp_no;

    -- List the department of 
    --each employee with the following info: employee number,
    --last name, first name, department name.
    

SELECT 

    e.emp_no,
    de.dept_no,
	d.dept_name,
    e.first_name,
    e.last_name

FROM employees as e
JOIN dept_emp as de
on (e.emp_no = de.emp_no)
join departments as d
on (d.dept_no = de.dept_no)
ORDER BY e.emp_no;



    

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT

e.emp_no,
e.last_name,
e.first_name,
d.dept_name


FROM employees as e
JOIN dept_emp as de
on (e.emp_no = de.emp_no)
JOIN departments as d
on (d.dept_no = de.dept_no)
WHERE dept_name = 'Sales'

order by e.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT 

e.last_name,
e.first_name

FROM employees as emp_no
WHERE e.first_name = "Hercules" AND e.last_name 'B%';









    