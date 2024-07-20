#string functions
select length('aditi')
;

select first_name,length(first_name)
from employee_demographics
order by 2;

select upper('aditi');

select lower('ADDITITTI')
;
select first_name,upper(first_name)
from employee_demographics;


select trim('    aditi      ');
select rtrim('    aditi      ');
select ltrim('    aditi      ');


select first_name,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as Birthmonth
from employee_demographics;


select first_name,replace(first_name,'a','z')
from employee_demographics;


select locate('d','aditi');
select first_name,locate('An',first_name)
from employee_demographics;

select first_name,last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics;

##case statements

select first_name,last_name,age,
case
	when age <=30 then 'young'
    when age between 1 and 50 then 'old'
    when age >= 50 then 'on deaths door'
end as age_bracket   
from employee_demographics
;

select first_name,last_name,salary,
case
	when salary <50000 then salary +(salary*0.05)
    when salary >50000 then salary +(salary*0.07)
end as new_salary,
case
	when dept_id = 6 then salary *.10
end as bonus
from employee_salary;



