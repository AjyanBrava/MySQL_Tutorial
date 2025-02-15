-- String Functions

SELECT length('skyfall');

SELECT *
FROM employee_demographics;

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT upper('sky');

SELECT lower('SKY');

SELECT first_name, upper(first_name)
FROM employee_demographics;

SELECT ('        sky        ');

SELECT trim('        sky        ');

SELECT ltrim('        sky        ');

SELECT rtrim('        sky        ');

SELECT first_name,
left(first_name, 4),
right(first_name, 4),
substring(first_name, 3, 2),
birth_date,
substring(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

SELECT first_name, replace(first_name, 'a', 'z')
FROM employee_demographics;

SELECT locate('x', 'Alexander');

SELECT first_name, locate('An', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
concat(first_name, ' ', last_name) AS full_name
FROM employee_demographics;