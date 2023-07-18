
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


