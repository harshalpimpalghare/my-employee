use myemployees; 
-- reading complite table
select*from employees;
-- get unique department
select distinct department from employees;
-- use alias
select name as employeename, designation as role from employees;
-- calcutate annual salary using arithmetic operators
select name, salary, salary*12 as annualsalary from employees;
-- show name and table adding 20% bonus
select name, salary, salary*0.2 as bonus from employees;
-- using and operator
select*from employees where department ='it' and age>22;
-- using or operater
select*from employees
where department='non it' or age <22;
-- using not operator
select*from employees
where not department='it';
-- employees whose name start with s
select*from employees where name like 's%';
-- employees aged betweem 22 and 25 
select*from employees
where age between 22 and 23;
-- count total number of employees
select count(*) as totalemployees from employees;
-- total salary paid to employees
SELECT SUM(salary) as totalsalaries from employees;
-- average salary of all employees
select avg (salary) as averagesalary from employees;
-- find out maximum and minimum salary in the table
select min(salary)as minsalary, max(salary) as maxsalary from employees;
-- number of employees in each department 
select department, count(*) as total from employees
group by department;
-- find avg salary per department
select department,avg(salary) as average from employees
group by department;
-- total salary as per designation
select designation, sum(salary) as totalsalary from employees
group by designation;
-- find designation wise employees
select designation, count(*) as  totalsalary from employees
group by designation;
-- department with more than 10 employees
select department,count(*) as total from employees
group by department
having count(*)>10;
-- designation with average salary greater than 65000
select designation, avg(salary) as avgsalary from employees
group by designation
having avg(salary)>65000;
-- using round off for avg
select department,round(avg(salary),2) as average 
from employees
group by department;
-- count of employees by department and designation
select department,designation, count(*) as total from employees
group by department, designation;
-- average age of employees in each department
select department,avg(age) as avgage from employees
group by department;
-- highest salary per designation
select designation,max(salary) as maxsalary from employees
group by designation;
-- total salary paid to employees below age 23
select sum(salary) as total from employees
where age < 23;
-- number of employees per age group
select age,count(*) as total from employees
group by age
order by age;





