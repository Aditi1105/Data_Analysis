select *
from employee_demographics;

#pemdas- PEMDAS INM MYSQL IS LIKE BODMAS, P - PARENTHESIS E - EPONENT M - MULTIPLICATION D - DIVISION A - ADDITION S - SUBTRACTION

SELECT first_name, GENDER,
AGE,(AGE + 10) *10 AS AGED
FROM employee_demographics;

#DISTINCT -- UNIQUE VALUES
SELECT DISTINCT GENDER
FROM employee_demographics;

#WHERE CLAUSE

SELECT *
FROM employee_demographics
WHERE first_name = 'LESLIE';

SELECT * 
FROM employee_salary
WHERE salary > 5000;


#and or logical operators
SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' and age = 44) or age > 50;

#like statement
SELECT * 
FROM employee_demographics
WHERE first_name like '%er%' ;

SELECT * 
FROM employee_demographics
WHERE first_name like 'a%' ;

SELECT * 
FROM employee_demographics
WHERE first_name like '_e%' ;

SELECT * 
FROM employee_demographics
WHERE first_name like 'J____' ;

SELECT * 
FROM employee_demographics
WHERE first_name like '%er__' ;

SELECT * 
FROM employee_demographics
WHERE first_name like 'a___%' ;

SELECT max(age),gender
FROM employee_demographics
group by gender;

SELECT first_name,gender,age
FROM employee_demographics
order by gender,age desc;             #by default vale ASC


#having clause nd group by
# having claause is used after groupby clause for aggregate functions, where is used for row level check.

SELECT OCCUPATION,avg(SALARY)
FROM employee_salary
where occupation LIKE '%MANAGER'
GROUP BY occupation
HAVING avg(salary) > 40000
; 