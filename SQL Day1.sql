CREATE DATABASE Sql_Practice;

USE Sql_Practice;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);
DROP TABLE employees;
INSERT INTO employees
(id, name, age, department, salary, city)
VALUES
(1, 'Rahul', 23, 'IT', 45000, 'Bhopal'),
(2, 'Priya', 25, 'HR', 35000, 'Indore'),
(3, 'Amit', 28, 'IT', 60000, 'Bhopal'),
(4, 'Sneha', 24, 'Finance', 40000, 'Delhi'),
(5, 'Vikas', 30, 'HR', 50000, 'Indore'),
(6, 'Neha', 26, 'IT', 55000, 'Mumbai'),
(7, 'Rohit', 27, 'Finance', 70000, 'Delhi'),
(8, 'Anjali', 22, 'IT', 30000, 'Bhopal'),
(9, 'Karan', 29, 'Marketing', 48000, 'Pune'),
(10, 'Pooja', 25, 'HR', 38000, 'Mumbai');

#Level 1 — Easy
#Q1. Display all columns and all records from the employees table.
SELECT * FROM employees;
#Q2. Display only the employee names of all employees.
SELECT name FROM employees;
#Q3. Display only the employee names and salaries of all employees.
SELECT name,salary
FROM employees;

#Level 2 — Easy to Medium
#Q4. Display all unique department names.
SELECT DISTINCT department 
FROM employees; 
#Q5. Display all unique cities where employees live.
SELECT DISTINCT city
FROM employees;
#Q6. Display only the employee IDs, names, and departments.

SELECT id,name,department
FROM employees;

#Level 3 — Challenge
#Q7. Display the employee names, departments, and cities without repeating identical combinations.
SELECT DISTINCT name,department,city
FROM employees;
#Q8. Display the unique combinations of department and salary.
SELECT DISTINCT department,salary
FROM employees;
#Q9. Display all columns from the table, but return only the first five records. (Hint: You may need a clause beyond today's main topics.)
SELECT *
FROM employees
LIMIT 5;

