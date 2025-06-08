# Database Project 

This project demonstrates a simple business database, created and previewed using DBeaver, and now available on GitHub. It contains three main tables: Employees, Products, and Sales, each with representative data to support various business queries and analytics.

## Table content

- Installation

- Features

- Usage

- Technologies

- Reference

  ## Installation
  
  - Clone the repository in terminal = git clone  https://github.com/lwambisrat/Tables-sql

  - display the repository = cd Tables-sql

  - create schema in debeaver called company

  - create all  employee, product, and sales tables

  - put the contents to the table

  - after putting all datas save it in the repository

## Features

 ### Products Table
 
The Products table lists inventory items, their categories, prices, and current stock levels.

### Sales Table

The Sales table records individual sales transactions, linking employees and products, with the date, quantity, and total amount.


  ### Usage

  The project includes a comprehensive set of sample SQL queries, such as:

Selecting all columns or specific columns from tables.

Aggregating data, such as total and average salaries, or total sales.

Filtering and grouping data by department, gender, or year.

Ranking employees by salary or sales.

Analyzing product sales by category, department, or employee.

A total of 30 queries are provided to demonstrate various reporting and analytical scenarios.


### Employees Table -> use this example

The Employees table stores personal and employment details for each staff member.

|EmployeeID|   FirstName   |  LastName|  Gender|     Department	|  HireDate	  |   Salary  |
|----------|---------------|----------|--------|----------------|-------------|-----------|
|1         |     John	     | Doe	    |Male	   |    IT          |  2018-05-01 |   60000.00|
|2	       |     Jane	     | Smith	  |Female  |	  HR	        |  2019-06-15 |   50000.00|
|3	       |     Michael	 | Johnson	| Male	 |    Finance	    |  2017-03-10 |   75000.00|
|4	       |     Emily	   |  Davis	  | Female |     IT	        |  2020-11-20 |   70000.00|
|5	       |     Sarah	   | Brown	  | Female |     Marketing	|  2016-07-30 |   45000.00|
|6	       |     David	   |  Wilson  | 	Male |     Sales	    |  2019-01-05 |   55000.00|
|7	       |     Chris	   |  Taylor  | 	Male |     IT    	    |  2022-02-25 |   65000.00|

### Questions

-1  Select all columns from the Employees table.

select * from company.employees;

-2 . Select the first names of all employees.

select FirstName from company.employees;

---3. Select distinct departments from the Employees table. 

SELECT DISTINCT department
FROM company.employees;

### Technologies 

- SQL In Dbeaver



### Reference

These tables and data previews were generated and visualized with DBeaver and are included in the repository for immediate reference:

