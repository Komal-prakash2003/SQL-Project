create database informations;
use information;

create table employees(
emp_id int,
name varchar(15),
department varchar(20),
salary int,
joining_year int);

insert into employees(emp_id,name,department,salary,joining_year)values
(101,"alice","hr",6000,2020),
(102,"bob","it",75000,2018),
(103,"charlie","finance",50000,2021),
(104,"david","it",80000,2015),
(105,"eve","hr",45000,2022);

select * from employees;

#1.write a query to calculate a 10% bonus if the salary is greater than or equal to 60000.otherwise,calculate a 5% bonud.display emp_id,
                                                                                       #name and the calculated bonus.
select emp_id,name,
if(salary>=60000,salary*0.1,salary*0.05) as bonus
from employees;

#2.write a query to classify employees as "experienced"if their joining_year is before 2020 and "newcomer" otherwise,
                                                                        #display emp_id,and and the category.
select emp_id,name,
if(joining_year>2020,"experienced","newcomer") as category
from employees;

#3. write a query to display emp_id,name and a status of "high earner" or "average earner" for employees in the "it" department,
																			#depending on weather their salary exceeds 75000.
select emp_id,name,
if(salary>75000,"high earner","average earner") as status
from employees 
where department = "it";

#4.write a query to mark employees a "eligible for promotion if they are in "it" department and their salary is greater
													#than 70000. mark other as "not eligible".
select name,
if(department= "it"and salary>70000,"eligible for promotion","not eligible for promotion")
from employees;

#5.determine if employee_id in the employees table is even or odd.
select emp_id,
if(emp_id%2=0,"even","odd")
from employees;

#6.check weather joining_year is a leap year or not?
select joining_year,
if(joining_year/4=0,"leap year","not leap year")
from employees;

