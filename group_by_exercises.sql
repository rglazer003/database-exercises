use employees;
select distinct title from titles;
select last_name, first_name from employees where last_name like "%E" and last_name like "E%" group by last_name, first_name;
select last_name, count(last_name) from employees where last_name like "%q%" and last_name not like "%qu%" group by last_name order by count(last_name) desc;
select count(*), gender from employees where (first_name = "Irene" or first_name = "Vidya" or first_name = "Maya") group by gender;



