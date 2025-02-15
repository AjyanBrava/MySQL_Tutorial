SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name, age, age+10, (age+10)*10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;