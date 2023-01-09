CREATE TABLE dept_emp (
    emp_no INT  NOT NULL ,
    dept_no VARCHAR  NOT NULL ,
    PRIMARY KEY (
        emp_no,dept_no
    )
);

CREATE TABLE employees (
    emp_no INT  NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    brith_date DATE  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date DATE  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE salaries (
    emp_no INT  NOT NULL ,
    Salary INT  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE departments (
    dept_no VARCHAR  NOT NULL ,
    depth_name VARCHAR  NOT NULL ,
    PRIMARY KEY (
        dept_no, depth_name
    )
);

CREATE TABLE titles (
    title_id VARCHAR  NOT NULL ,
    titles VARCHAR  NOT NULL ,
    PRIMARY KEY (
        title_id
    )
);

-- ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
-- REFERENCES employees (emp_no);

-- ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
-- REFERENCES departments (dept_no);

-- ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_no FOREIGN KEY(emp_no)
-- REFERENCES salaries (emp_no);

-- ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
-- REFERENCES titles (title_id);

-------Data analysis-----------

select 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary 
From employees 
Join salaries
ON employees.emp_no = salaries.emp_no;

select
	first_name,
	last_name 
From employees 
where hire_date BETWEEN '1/1/1986' AND '12/31/1986'
order by hire_date; 

select 
	departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.firs_name


select 
	dept_emp.emp_no, 
	employees.first_name, 
	employees.last_name,
	departments.depth_name
From dept_emp
Join employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

select 
	employees.first_name,
	employees.last_name,
	employees.sex
From employees
where first_name = 'Hercules'
AND last_name like 'B%'

select 
	depaertments.depth_name, 
	employees.fist_name,
	employees.last_name,
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.depth_name = 'Sales';

select
	dept_emp.emp_no,
	employees.first_name,
	employees.last_name,
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
	departments.dept_name

