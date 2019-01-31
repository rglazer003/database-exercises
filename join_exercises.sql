use employees;
show tables;
select employees.first_name, dept_emp.emp_no
from employees
       join dept_emp on employees.emp_no = dept_emp.emp_no;
select *
from employees
where first_name = "Yuchang"
  and last_name = "Weedman";
select *
from dept_emp
where emp_no = "111939";
select departments.dept_name, employees.first_name
from employees
       join dept_manager on dept_manager.emp_no = employees.emp_no
       join departments on departments.dept_no = dept_manager.dept_no
where to_date > '2019-1-31';
select departments.dept_name, employees.first_name
from employees
       join dept_manager on dept_manager.emp_no = employees.emp_no
       join departments on departments.dept_no = dept_manager.dept_no
where employees.gender = "F";
select titles.title, count(*), dept_emp.dept_no
from titles
       join dept_emp on dept_emp.emp_no = titles.emp_no
where dept_emp.dept_no = "d009"
  and dept_emp.to_date > '2019-1-31'
group by titles.title;
select departments.dept_name, employees.first_name, salaries.salary
from employees
       join dept_manager on dept_manager.emp_no = employees.emp_no
       join departments on departments.dept_no = dept_manager.dept_no
  join salaries on salaries.emp_no = dept_manager.emp_no
join dept_emp on dept_emp.emp_no = employees.emp_no
where dept_emp.to_date > '2019-1-31';