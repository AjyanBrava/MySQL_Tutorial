-- Subqueries

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
WHERE employee_id IN (
	SELECT employee_id
	FROM employee_salary
    WHERE dept_id = 1);
    
SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(`max(age)`)
FROM (SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
GROUP BY gender;

SELECT AVG(max_age)
FROM (SELECT gender, AVG(age) AS avg_age, max(age) AS max_age, min(age) AS min_age, count(age)
FROM employee_demographics
GROUP BY gender) AS agg_table;