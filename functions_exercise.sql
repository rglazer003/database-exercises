USE employees;
select concat(first_name, " ",  last_name) from employees where (first_name = "Irene" or first_name = "Vidya" or first_name = "Maya") and gender = "M" order by last_name desc, first_name;
select * from employees where hire_date between cast('1990-01-01' as date) and cast('1999-12-31' as date);
select * from employees where last_name like "e%";
select * from employees where birth_date like "%12-25";
select * from employees where last_name like "%q%";
select * from employees where last_name like "%E" and last_name like "E%" order by emp_no desc;
select datediff(curdate(), hire_date) from employees where (hire_date between cast('1990-01-01' as date) and cast('1999-12-31' as date))
and birth_date like "%12-25" order by birth_date, hire_date desc;
select * from employees where last_name like "%q%" and last_name not like "%qu%";

