--****List the following details of each employee: employee number, last name, first name, sex, and salary.
--**** QUERY TEXT IS BELOW ****--
        -- select em.emp_no AS "Employee Number", em.first_name, em.last_name, em.sex, sa.salary
        -- from employees em inner join salaries sa on sa.emp_no = em.emp_no
--**** QUERY TEXT IS ABOVE ****--

--****List first name, last name, and hire date for employees who were hired in 1986.
--**** QUERY TEXT IS BELOW ****--
        -- select em.first_name, em.last_name, em.hire_date
        -- from employees em 
        -- where Date_part('year', em.hire_date) ='1986'
--**** QUERY TEXT IS ABOVE ****--

--****List the manager of each department with the following information:
--****department number, department name, the manager's employee number, last name, first name.
--**** QUERY TEXT IS BELOW ****--
        --  select de.dept_no, de.dept_name, em.emp_no, em.first_name, em.last_name
        --  from employees em inner join dept_manager dm on dm.emp_no = em.emp_no
        --  inner join departments de on dm.dept_no = de.dept_no
--**** QUERY TEXT IS ABOVE ****--

--****List the department of each employee with the following information:
--****employee number, last name, first name, and department name.
--**** QUERY TEXT IS BELOW ****--
        -- select em.emp_no, em.last_name, em.first_name, dep.dept_name
        -- from employees em inner join dept_emp de on em.emp_no = de.emp_no
        -- inner join departments dep on dep.dept_no = de.dept_no
--**** QUERY TEXT IS ABOVE ****--

--****List first name, last name, and sex for employees whose first name is "Hercules"
--****and last names beginning with "B."
--**** QUERY TEXT IS BELOW ****--
        -- select em.first_name, em.last_name, em.sex
        -- from employees as em 
        -- where em.first_name = 'Hercules'
        -- and em.last_name like 'B%'
--**** QUERY TEXT IS ABOVE ****--

--****List all employees in the Sales department,
--****including their employee number, last name, first name, and department name.
--**** QUERY TEXT IS BELOW ****--
-- select em.emp_no, em.last_name, em.first_name, dep.dept_name
-- from employees em inner join dept_emp de on em.emp_no = de.emp_no
-- inner join departments dep on dep.dept_no = de.dept_no
-- where dep.dept_no = 'd007'
--**** QUERY TEXT IS ABOVE ****--


--****List all employees in the Sales and Development departments,
--****including their employee number, last name, first name, and department name.
--**** QUERY TEXT IS BELOW ****--
        -- select em.emp_no, em.last_name, em.first_name, dep.dept_name
        -- from employees em
        -- inner join dept_emp de on em.emp_no = de.emp_no
        -- inner join departments dep on dep.dept_no = de.dept_no
        -- where dep.dept_no in('d007', 'd005') 
--**** QUERY TEXT IS ABOVE ****--

--****List the frequency count of employee last names
--****(i.e., how many employees share each last name) in descending order.
--**** QUERY TEXT IS BELOW ****--
        -- select count(last_name) as "Name_Count", last_name
        -- from employees
        -- group by last_name
        -- order by count(last_name) DESC
--**** QUERY TEXT IS ABOVE ****--
