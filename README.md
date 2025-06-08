# Database Project Overview

This project demonstrates a simple business database, created and previewed using DBeaver, and now available on GitHub. It contains three main tables: Employees, Products, and Sales, each with representative data to support various business queries and analytics.

# Table Structures and Sample Data
# Employees Table

The Employees table stores personal and employment details for each staff member.

|EmployeeID|	  |FirstName  |LastName |Gender    |Department	 |HireDate	 |Salary  |
|1              |	John	    | Doe	    |Male	     |IT           |2018-05-01 |60000.00|
|2	            |Jane	      | Smith	  |Female	   |HR	         |2019-06-15 |50000.00|
|3	            |Michael	  |Johnson	|Male	     |Finance	     |2017-03-10 |75000.00|
|4	            |Emily	    |Davis	  |Female	   |IT	         |2020-11-20 |70000.00|
|5	            |Sarah	    |Brown	  |Female	   |Marketing	   |2016-07-30 |45000.00|
|6	            |David	    |Wilson   |	Male	   |Sales	       |2019-01-05 |55000.00|
|7	            |Chris	    |Taylor   |	Male	   |IT    	     |2022-02-25 |65000.00|
Products Table
The Products table lists inventory items, their categories, prices, and current stock levels.

ProductID	ProductName	Category	Price	Stock
1	Laptop	Electronics	1200.00	30
2	Desk	Furniture	300.00	50
3	Chair	Furniture	150.00	200
4	Smartphone	Electronics	800.00	75
5	Monitor	Electronics	250.00	40
6	Bookshelf	Furniture	100.00	60
7	Printer	Electronics	200.00	25
Sales Table
The Sales table records individual sales transactions, linking employees and products, with the date, quantity, and total amount.

SaleID	ProductID	EmployeeID	SaleDate	Quantity	Total
1	1	1	2021-01-15	2	2400.00
2	1	2	2021-03-22	1	300.00
3	3	3	2021-05-10	4	600.00
4	4	4	2021-07-18	3	2400.00
5	5	5	2021-09-25	2	500.00
6	6	6	2021-11-30	1	100.00
7	7	1	2022-02-15	1	200.00
8	1	2	2022-04-10	1	1200.00
9	2	3	2022-06-20	2	600.00
10	3	4	2022-08-05	3	450.00
11	4	5	2022-10-11	1	800.00
12	5	6	2022-12-29	4	1000.00
Example SQL Queries
The project includes a comprehensive set of sample SQL queries, such as:

Selecting all columns or specific columns from tables.
Aggregating data, such as total and average salaries, or total sales.
Filtering and grouping data by department, gender, or year.
Ranking employees by salary or sales.
Analyzing product sales by category, department, or employee.
A total of 30 queries are provided to demonstrate various reporting and analytical scenarios.

How to Use
You can use this database structure and sample data to practice SQL queries in tools like DBeaver or import it into other database systems for learning and experimentation.

Reference
These tables and data previews were generated and visualized with DBeaver and are included in the repository for immediate reference:

