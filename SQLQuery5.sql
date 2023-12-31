
/*Ability to create a payroll
service database
- Using MSSQL Client use create database
query to create a payroll_service
database
- Also you can see the DB created by
using show database query
- And go to the database created by using
use payroll_service query*/


CREATE DATABASE payroll_serviceRFP287;

USE payroll_serviceRFP287;

/*
Ability to create a employee payroll table
in the payroll service database to
manage employee payrolls
- Use payroll_service database in MSSQL Client
- Use Create Table employee_payroll Query
to create employee payroll table with columns id,
name, salary and start date as column. Note Id is set to
auto increment.
- Understand the SQL data types to be used for the
table
- Note: SQL Queries as case insensitive
*/

CREATE TABLE employee_payroll (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(100),
  salary DECIMAL(10, 2),
  start_date DATE
);
/*
Ability to create employee
payroll data in the payroll
service database as part of
CRUD Operation - Use payroll_service database in
MSSQL Client
- Use INSERT INTO employee_payroll
Query to create employees payroll
data into the employee_payroll table
*/
INSERT INTO employee_payroll (name, salary, start_date)
VALUES ('John Doe', 5000.00, '2023-07-01');

INSERT INTO employee_payroll (name, salary, start_date)
VALUES ('Jane Smith', 6000.00, '2023-06-15');

INSERT INTO employee_payroll (name, salary, start_date)
VALUES ('Alice Johnson', 4500.00, '2023-07-10');

INSERT INTO employee_payroll (name, salary, start_date)
VALUES ('Michael Brown', 5500.00, '2023-07-05');

INSERT INTO employee_payroll (name, salary, start_date)
VALUES ('Emily Davis', 4000.00, '2023-07-01');

/*
Ability to retrieve all the
employee payroll data that is
added to payroll service
database
- Use payroll_service database in MSSQL
Client
- Use SELECT * FROM employee_payroll to
retrieve all the data from the
employee_payroll table
*/


SELECT * FROM employee_payroll;

/*
Ability to retrieve salary data for a particular
employee as well as all employees who have
joined in a particular data range from the
payroll service database
- Use SELECT salary FROM employee_payroll
WHERE name = 'Bill� Query to View Bill�s salary
- Use Select query with Where condition View employees
between start dates
- Query: WHERE start BETWEEN CAST('2018-01-01'
AS DATE) AND DATE(NOW());
- Note: Where Condition Clause is used to retrieve the row needed
from the table
- Note: Use of Database Functions like CAST() and NOW() in the
Query
*/

SELECT * FROM employee_payroll
WHERE start_date BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE();

/*
Ability to add Gender to Employee
Payroll Table and Update the Rows to
reflect the correct Employee Gender
- Use payroll_service database in MSSQL Client
- Use Alter Table Command to add Field gender after
the name field
- Use Update Query to set the gender using where
condition with the employee name
- E.g. UPDATE employee_payroll set gender =
'M' where name = 'Bill' or name =
'Charlie';
*/
ALTER TABLE employee_payroll
ADD gender CHAR(1) NULL;


UPDATE employee_payroll
SET gender = 'M'
WHERE name IN ('John Doe', 'John Doe');


/*
Ability to find sum, average, min, max
and number of male and female
employees
- Use payroll_service database in MSSQL Client
- Use Database Function SUM, AVG, MIN, MAX, COUNT
to do analysis by Male or Female.
- Note: You will need to use GROUP BY GENDER grouping to
get the result
- E.g. SELECT SUM(salary) FROM employee_payroll
WHERE gender = 'F' GROUP BY gender;
*/

SELECT AVG(salary) AS avg_salary
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;

SELECT MIN(salary) AS min_salary
FROM employee_payroll
WHERE gender = 'F'
GROUP BY gender;

SELECT gender, COUNT(*) AS count_employees
FROM employee_payroll
GROUP BY gender;

select * from employee_payroll

