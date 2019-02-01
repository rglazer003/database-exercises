use employees;
select *
from employees
where hire_date in (select hire_date from employees where emp_no = '101010');
select title, count(*)
from titles
where emp_no in (select emp_no from employees where first_name = 'Aamod')
group by title;
select first_name, last_name
from employees
where gender = 'F'
  and emp_no in (select emp_no from dept_manager where to_date > now());
select dept_name
from departments
where dept_no in (select dept_no
from dept_manager
where emp_no in (select emp_no from employees where gender = 'F' and to_date > now()));
select first_name, last_name
from employees
where emp_no in (select emp_no from salaries where salary in (select max(salary) from salaries));

create table categories (
  id int not null auto_increment,
  category varchar(50) not null,
  primary key (id)
);

create table users (
  id int not null auto_increment,
  username varchar(20) not null,
  email varchar(30) not null,
  password varchar(20) not null,
  primary key (id)
);

create table ads (
  id int not null auto_increment,
  title varchar(50) not null,
  description varchar(100),
  category1 int not null,
  category2 int default not null,
  user int not null,
  primary key (id),
  category varchar(50) not null,

  foreign key (category1) references categories(id),
  foreign key (category2) references categories(id),
  foreign key (user) references users (id)
);

create table ads_categories (
  id int not null,
  category1 int not null,
  category2 int,
  foreign key (id) references ads(id),
  foreign key (category1) references categories(id),
  foreign key (category2) references categories(id)
);

insert into ads_categories (id, category1, category2)
values ('1', '1', null),
       ('2', '2', '3'),
       ('3', '1', null);
drop table if exists employees.ads_categories;
create table ads_categories (
  id int not null auto_increment primary key,
  ad_id int not null,
  cat_id int not null,
  foreign key (ad_id) references ads(id),
  foreign key (cat_id) references categories(id)
);

insert into ads_categories (ad_id, cat_id)
values ('1', '2'),
       ('2', '2'),
       ('2', '3'),
       ('3', '1');