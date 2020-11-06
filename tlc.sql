select * from departments;
select * from employees;
select employee_id,last_name,job_id, hire_date as start_date from employees;
select distinct job_id from employees;
select concat(concat(last_name,', '),job_id) as name_job from employees;


select department_id,last_name, salary from employees where salary between 3000 and 4000;

select first_name,last_name,hire_date, salary from employees where last_name='Tobias' or last_name='Jones' order by salary;

select department_id,last_name from employees where department_id=30 or department_id=80 order by last_name;

select * from employees where extract(year from hire_date)=2005;

select * from employees where manager_id is null;

select last_name, salary, commission_pct from employees where commission_pct is not null order by salary;

select * from employees where last_name like '__g%';

select * from employees where last_name like 'g' and last_name like 'k';

select * from employees where commission_pct=0.2;

select last_name,salary,(salary+(salary*0.3)) as increased_salary from employees;

select last_name, length(last_name) as nameLength from employees;

select hire_date from employees where extract(week from current_date-hire_date);

select round(((current_date-hire_date)/7)) as numberOfWeeks from employees;

select lower(first_name) as firtname ,upper(last_name) as lastname from employees;

select max(salary) as max_salary, sum(salary) as sum_salary, avg(salary) as avg_salary, min(salary) as min_salary from employees;

select count(distinct manager_id) as result from employees;

select (max(salary)-min(salary)) as difference from employees;

select manager_id, max(salary) as salary from employees where manager_id is not null group by manager_id order by salary desc fetch first row only; 

select e.job_id, e.first_name,e.last_name,d.department_name from employees e inner join departments d on 