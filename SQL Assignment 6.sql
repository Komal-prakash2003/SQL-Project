create database office2;
use office2;


create table employee(
emp_id int,
name varchar(15),
department varchar(20),
salary int);

insert into employee(emp_id,name,department,salary)values
(1,"john","hr",5000),
(2,"alice","it",7000),
(3,"bob","finance",6000),
(4,"eve","it",8000),
(5,"charlie","finance",7500);


create table department(
dept_id int,
dept_name varchar(15));

insert into department(dept_id,dept_name)values
(1,"hr"),
(2,"it"),
(3,"finance");

#1.Find employees with salaries greater than the average salary of all employees. 
select name from employee 
where salary > (select avg(salary) from employee);


#2.Find employees whose salary is higher than the salary of 'Alice'.
select name from employee
where salary > (select salary from employee where name  = "alice");
 

#3.List employees who belong to a department that has the name 'IT'. 
select name from employee
where department = "it";


#4.Get the names of employees who earn the highest salary in their department. 
select name from employee e
where salary = (select max(salary) from employee where department = e.department);


#5.Retrieve the departments where at least one employee earns more than 7000. 
select department from employee e
where salary > 7000 and department in (select department from employee where salary > 7000);


#6.List employees who do not belong to any department in the departments table. 
select name from employee e
where department in (select department from employee where department is null);


#7.Find the second-highest salary among employees. 
select max(salary) from employee
where salary < (select max(salary) from employee);

#8.Retrieve the names of employees who work in the department with the highest number of employees. 
select name from employee e
where department;

#9.Find employees who earn more than the average salary in their department. 
select name from employee
where salary > (select avg(salary) from employee);


#10.Retrieve employees whose salary is above 7000 and belong to departments in the departments table.


#11.List all departments that have no employees. 
select department from employee where emp_id is null;


#12.Find employees who have the same salary as another employee in a different department. 
select name from employee e where salary in (select employee from employee where dept_id = e.dept_id);



#13.Get the total salary of the department with the maximum total salary. 
select count(salary) from employee where salary = (select max(salary) from employee);


#14.Retrieve employees whose department has more than two employees. 
select name from employee where department in (select department from employee group by department having count(name)>2);



#15.Find employees whose salary is higher than the average salary of employees in the IT department. 
select name from employee
where salary > (select avg(salary) from employee where department = "it");









