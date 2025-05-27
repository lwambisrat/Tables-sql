create schema company;
create table company.employees(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10) CHECK(gender in('Male','Female','non-binary','other')),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DOUBLE PRECISION
);
insert into company.employees( EmployeeID, FirstName,  LastName, Gender, Department, HireDate,Salary)
values(1,'John', 'Doe', 'Male', 'IT', '2018-05-01', 60000.00),
(2,'Jane', 'Smith', 'Female', 'HR', '2019-06-15', 50000.00),
(3,'Michael', 'Johnson', 'Male', 'Finance', '2017-03-10', 75000.00),
(4,'Emily', 'Davis', 'Female', 'IT', '2020-11-20', 70000.00),
(5,'Sarah', 'Brown', 'Female', 'Marketing', '2016-07-30', 45000.00),
(6,'David', 'Wilson', 'Male', 'Sales', '2019-01-05', 55000.00),
(7,'Chris', 'Taylor', 'Male', 'IT', '2022-02-25', 65000.00);




create table company.products(
productId SERIAL primary key,
productName varchar(20),
category varchar(25),
price decimal(15,2),
stock int
);
insert into company.products (productName,category,price,stock)
values('Laptop','Electronics',1200.00,30),
('Desk','Furniture',300.00,50),
('Chair','Furniture',150.00,200),
('Smartphone','Electronics',800.00,75),
('Monitor','Electronics',250.00,40),
('Bookshelf','Furniture',100.00,60),
('Printer','Electronics',200.00,25);






create table company.sales (
    sale_id SERIAL primary key,
    ProductId SERIAL references company.products(ProductId),
    EmployeeId SERIAL references company.employees(EmployeeId),
    sale_date date,
    quantity int,
    total decimal(15,2)
);
insert into company.sales (ProductId, EmployeeId, sale_date, quantity, total)
values
( 1, 1, '2021-01-15', 2, 2400.00),
( 2, 2, '2021-03-22', 1, 300.00),
( 3, 3, '2021-05-10', 4, 600.00),
( 4, 4, '2021-07-18', 3, 2400.00),
( 5, 5, '2021-09-25', 2, 500.00),
( 6, 6, '2021-11-30', 1, 100.00),
( 7, 1, '2022-02-15', 1, 200.00),
( 1, 2, '2022-04-10', 1, 1200.00),
( 2, 3, '2022-06-20', 2, 600.00),
( 3, 4, '2022-08-05', 3, 450.00),
( 4, 5, '2022-10-11', 1, 800.00),
( 5, 6, '2022-12-29', 4, 1000.00);




-- Questions

--1  Select all columns from the Employees table. 
select * from company.employees;

--2 . Select the first names of all employees. 
select FirstName from company.employees;

---3. Select distinct departments from the Employees table. 
SELECT DISTINCT department
FROM company.employees;

---4- Select the total number of employees.
select count(FirstName) as Total
from company.employees;

--5. Select the total salary paid to all employees. 
select sum(salary) as Total_payment
from company.employees;

--6  Select the average salary of all employees. 
select avg(salary) as Average_Salary
from company.employees;

--7. Select the highest salary in the Employees table. 
Select the highest salary in the Employees table. 
select max(salary) as maximum
from company.employees;

--8  Select the lowest salary in the Employees table. 
select min(salary) as minimum_salary
from company.employees;

--9.Select the total number of male employees. 
SELECT COUNT(*) as boys
FROM company.employees
WHERE Gender = 'Male';

--10. Select the total number of female employees.
SELECT COUNT(*) as girls 
FROM company.employees
WHERE Gender= 'Female';

--11 Select the total number of employees hired in the year 2020. 
SELECT COUNT(*) AS total_hired_2020
FROM company.employees
WHERE EXTRACT(YEAR FROM HireDate) = 2020;


--12. Select the average salary of employees in the 'IT' department.
SELECT AVG(salary)
FROM company.employees
WHERE department = 'IT'; 

-- 13.  Select the number of employees in each department. 
 SELECT Department, COUNT(*) AS employee_count
FROM company.employees
GROUP BY Department;

--14 . Select the total salary paid to employees in each department
SELECT Department, SUM(Salary) AS total_salary
FROM company.employees
GROUP BY Department;

--15  Select the maximum salary in each department. 
SELECT Department, MAX(Salary) AS max_salary
FROM company.employees
GROUP BY Department;

--16 Select the minimum salary in each department. 
SELECT Department, MIN(Salary) AS min_salary
FROM company.employees
GROUP BY Department;

--17 Select the total number of employees, grouped by gender. 
SELECT Gender, COUNT(*) AS total_employees
FROM company.employees
GROUP BY Gender;

--18 Select the average salary of employees, grouped by gender. 
select Gender,avg(salary) as Average
from company.employees
group by Gender;

--19.Select the top 5 highest-paid employees. 
SELECT EmployeeID, FirstName, LastName, Salary
FROM company.employees
ORDER BY Salary DESC
LIMIT 5;

--20 Select the total number of unique first names in the Employees table. 
SELECT COUNT(DISTINCT FirstName) AS unique_first_names
FROM company.employees;

--21. Select all employees and their corresponding sales 
SELECT e.EmployeeID, e.FirstName, e.LastName, s.sale_iD, s.ProductID, s.sale_date, s.quantity, s.total
FROM company.employees e
LEFT JOIN company.sales s ON e.EmployeeID = s.EmployeeID
ORDER BY e.EmployeeID, s.sale_date;

--22 Select the first 10 employees hired, ordered by their HireDate.
SELECT EmployeeID, FirstName, LastName, HireDate
FROM company.employees
ORDER BY HireDate
LIMIT 10;

--23 Select the employees who have not made any sales. 
SELECT EmployeeID, FirstName, LastName
FROM company.employees
WHERE EmployeeID NOT IN (SELECT DISTINCT EmployeeID FROM company.sales);

--24 Select the total number of sales made by each employee. 
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(s.sale_id) AS total_sales
FROM company.employees e
LEFT JOIN company.sales s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY total_sales DESC;

--25  Select the employee who made the highest total sales. 
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(s.Total) AS total_sales_amount
FROM company.employees e
JOIN company.sales s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY total_sales_amount DESC
LIMIT 1;

--26 Select the average quantity of products sold by employees in each department.
SELECT e.Department, AVG(s.quantity) AS avg_quantity_sold
FROM company.employees e
JOIN company.sales s ON e.EmployeeID = s.EmployeeID
GROUP BY e.Department;

--27  Select the total sales made by each employee in the year 2021. 
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(s.Total) AS total_sales_2021
FROM company.employees e
JOIN company.sales s ON e.EmployeeID = s.EmployeeID
WHERE EXTRACT(YEAR FROM s.sale_date) = 2021
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY total_sales_2021 DESC;

--28 Select the top 3 employees with the most sales in terms of quantity.
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(s.quantity) AS total_quantity
FROM company.employees e
JOIN company.sales s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY total_quantity DESC
LIMIT 3;

--29 Select the total quantity of products sold by each department.
SELECT e.Department, SUM(s.quantity) AS total_quantity
FROM company.employees e
JOIN company.sales s ON e.EmployeeID = s.EmployeeID
GROUP BY e.Department;

--30  Select the total revenue generated by sales of products in each category.
SELECT p.category, SUM(s.Total) AS total_revenue
FROM company.sales s
JOIN company.products p ON s.ProductID = p.productId
GROUP BY p.category;






















