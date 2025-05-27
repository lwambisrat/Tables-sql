# Company Database SQL Sample

This project provides a sample SQL schema and data for a fictional company, along with a comprehensive set of SQL queries for data analysis and reporting.

# Schema Overview

The database consists of the following tables in the `company` schema:

- employees: Stores information about company employees.
  - `EmployeeID`, `FirstName`, `LastName`, `Gender`, `Department`, `HireDate`, `Salary`
- products: Stores the product catalog.
  - `ProductId`, `ProductName`, `Category`, `Price`, `Stock`
- sales: Stores sales transactions.
  - `Sale_ID`, `ProductId`, `EmployeeId`, `Sale_Date`, `Quantity`, `Total`

# Getting Started

1. Create the schema and tables 
   Run the schema and table creation scripts to set up your database.

2. Insert sample data  
   Run the data insertion scripts to populate tables.

3. Run the queries  
   Use the provided SQL queries to explore and analyze the sample company data.

# Example: Select Total Sales Per Department
SELECT e.Department, SUM(s.Total) AS total_sales
FROM company.employees e
JOIN company.sales s ON e.EmployeeID = s.EmployeeId
GROUP BY e.Department;
