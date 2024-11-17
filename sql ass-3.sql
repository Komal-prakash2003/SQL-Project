create database office;
use office;



create table information(
emp_id int,
first_name varchar(10),
last_name varchar(10),
department varchar(15),
salary int,
hire_date date);

select * from information;

insert into information(emp_id, first_name, last_name, department, salary, hire_date) VALUES
(1, 'john', 'doe', 'IT', 60000, '2019-01-10'),
(2, 'jane', 'smith', 'HR', 55000, '2018-05-03'),
(3, 'emily', 'jones', 'IT', 62000, '2020-07-23'),
(4, 'michael', 'brown', 'Finance', 70000, '2014-05-14'),
(5, 'sarah', 'davis', 'Finance', 59000, '2017-11-18'),
(6, 'david', 'johnson', 'HR', 48000, '2021-09-10');

#1. Find the average salary of employees in each department. 
select department_id, avg(salary) AS avg_salary
from employees
group by department_id;


#2.Total number of employees hired after 2019.
select count(*) as total_employees
from information
where hire_date > "2019-12-31";


#3. List the departments and the total salary of all employees in each department, ordered by the total salary.
select department, SUM(salary) AS total_salary
from information
group by department
order by total_salary DESC;

#4. Find the highest salary in the Finance department.
SELECT MAX(salary) AS highest_salary
FROM information
WHERE department = 'Finance';

#5. Get the top 3 highest-paid employees.
SELECT emp_id,concat(first_name, "", last_name)as employee_name, salary
FROM information
ORDER BY salary DESC
LIMIT 3;

#6. Find the department with the minimum average salary.
SELECT department
FROM information
GROUP BY department
ORDER BY AVG(salary) ASC
LIMIT 1;

#7. Display the total number of employees in each department, ordered by the number of employees.
SELECT department, COUNT(*) AS employee_count
FROM information
GROUP BY department
ORDER BY employee_count DESC;

#8. Find the average salary of employees who were hired before 2020.
SELECT AVG(salary) AS average_salary
FROM information
WHERE hire_date < '2020-01-01';

#9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.
SELECT concat(first_name, "", last_name)as employee_name
FROM information
WHERE department = 'IT'
ORDER BY hire_date DESC;

#10. Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
SELECT concat(first_name, "", last_name)as employee_name, salary
FROM information
WHERE hire_date > '2019-01-01'
ORDER BY salary DESC;


#11. Get the employee with the lowest salary in the HR department.
SELECT concat(first_name, "", last_name)as employee_name, MIN(salary) AS lowest_salary
FROM information
GROUP BY department
ORDER BY total_salary asc;

#12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments. 
select department,sum(salary) as total_salary
from information
group by department
order by total_salary limit 2;

#13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
SELECT concat(first_name, "", last_name)as employee_name, salary
FROM information
WHERE hire_date > '2018-12-31'
ORDER BY salary DESC
limit 4;

# 14. Find the highest salary in the IT department, but limit the results to the top 1 result.   
select max(salary) as highest_salary
from information
where department = "it";

# 15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  
select department, avg(salary) as average_salary
from information
group by department
having avg(salary) >60000;