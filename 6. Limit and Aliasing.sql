SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age>40;

SELECT gender, AVG(age) avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age>40;