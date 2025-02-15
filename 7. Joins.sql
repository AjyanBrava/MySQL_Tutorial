-- Joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- Inner Join

SELECT *
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id, age, occupation
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- Outer Join

SELECT *
FROM employee_demographics dem
LEFT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT *
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- Self Join

SELECT *
FROM employee_salary sal1
JOIN employee_salary sal2
	ON sal1.employee_id = sal2.employee_id;

SELECT *
FROM employee_salary sal1
JOIN employee_salary sal2
	ON sal1.employee_id + 1 = sal2.employee_id;
    
-- Joining Multiple Tables

SELECT *
FROM parks_departments;

SELECT *
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments pd
	ON sal.dept_id = pd.department_id;