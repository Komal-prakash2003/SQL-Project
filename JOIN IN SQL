create database office1;
use office;

create table employees(
emp_id int,
emp_name varchar(15),
department_id int);

insert into employees(emp_id,emp_name,department_id)values
(1,"alice",10),
(2,"bob",20),
(3,"charlie",30),
(4,"david",10),
(5,"eve",40);

select *from employees;

create table departments(
department_id int,
department_name varchar(15));

insert into departments(department_id,department_name)values
(10,"hr"),
(20,"finance"),
(30,"it"),
(40,"admin"),
(50,"marketing");

select *from departments;

 create table projects(
 project_id int,
 emp_id int,
 project_name varchar(15));
 
 insert into projects(project_id,emp_id,project_name)values
 (101,1,"alpha"),
 (102,2,"beta"),
 (103,3,"gamma"),
 (104,4,"delta");
 
 select * from projects;
 
#1. Write a query to get Employee and Department details using join.
select emp_id,emp_name,department_name
from employees 
left join departments 
on employees.department_id = departments.department_id;


#2. Write a query to retrieve all employees with their departments, even if the department is missing.
select emp_name,department_name
from employees 
left join departments
on employees.department_id = departments.department_id;


#3.Write a query to get department details even if there are no employees in that department. 
select department_name
from employees right join departments
on departments.department_id = employees.department_id;

#4.Write a query to get all employees and departments, whether matched or not.
select emp_name,department_name
from employees 
inner join departments 
on employees.department_id = departments.department_id;

#5.JOIN three tables (Employees, Departments, Projects) to get employee, department, and project information
select emp_name,department_name,project_name
from employees 
inner join departments 
on employees.department_id = departments.department_id
inner join projects
on employees.emp_id = projects.emp_id;

#6.Find employees who are not assigned to any projects.
select emp_name,project_name
from employees left join projects
on employees.emp_id = projects.emp_id
where project_name is null;

#7.Find departments with no employees using a RIGHT JOIN.
select department_name,emp_name
from employees right join departments
on employees.department_id = departments.department_id
where emp_name is null;

#8.Write a query to get Employee and Department details using join with aliases. 
select emp_name,department_name
from employees as e
inner join departments as d
on e.department_id = d.department_id;

#9.Write a query to find employees in the same department as other employees.


#10.Write a query to find projects managed by employees in the 'IT' department. 
select project_name
from projects inner join employees
on projects.emp_id = employees.emp_id
inner join departments
on employees.department_id = departments.department_id
where department_name = "it";

#11.Write a query to show employees and their project information (even if not assigned to a project). 
select emp_name,project_id,project_name
from employees left join projects
on employees.emp_id = projects.emp_id;

#12.Find employees who work in departments with names starting with 'A'. 
select e.emp_name,d.department_name
from employees as e inner join departments as d
on e.department_id = d.department_id
where e.emp_name like "a%";


#13.Find the total number of employees in each department using GROUP BY and JOIN.
select d.department_name, count(emp_id) as "No. of Employees"
from  employees e
join departments d
on e.department_id=d.department_id
group by d.department_name;


#14.Get the list of departments with more than one employee. 
select department_name
from departments join employees 
on departments.department_id = employees.department_id 
group by department_name
having count(emp_id)>1;






