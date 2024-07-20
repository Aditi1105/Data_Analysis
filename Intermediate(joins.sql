#joins
###1. inner join

select *
from employee_demographics;

select *
from employee_salary;

select dem.employee_id,occupation,age
from employee_demographics as dem
inner join employee_salary as sal
      on dem.employee_id=sal.employee_id
;
#outer joins

select *
from employee_demographics as dem
left outer join employee_salary as sal
      on dem.employee_id=sal.employee_id
;

select *
from employee_demographics as dem
right outer join employee_salary as sal
      on dem.employee_id=sal.employee_id
;

#self joins

###unions---merge rows and if only union then it will give distinct output 

select first_name, last_name
from employee_demographics
union 
select first_name, last_name
from employee_salary;

select first_name, last_name
from employee_demographics
union all         #gives the uplicates values as well
select first_name, last_name
from employee_salary;

select first_name, last_name, 'old male' as label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'old female' as label
from employee_demographics
where age > 40  and gender = 'Female'
union
select first_name, last_name, 'highly salary employee' as label
from employee_salary
where salary > 45000
order by first_name,last_name
;