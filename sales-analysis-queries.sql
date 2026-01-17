-- ======================================
-- BASIC QUERIES
-- ======================================

-- Show All customers from India

select CustomerName from customers where Country="India";

-- List all products in the Technology category

select ProductName from products where Category="Technology";

-- Display all orders place in 2022

 select * from orders where year (OrderDate)="2022";
 
 -- Find Orders where quantity>5
 
select*from orders where Quantity>5;

-- Show distict customer segments
select distinct Segment from customers;

-- Find the total sales across all orders
select sum(sales) as total_sales from orders;

-- Calculate total Sales by product category
select category, sum(Sales) as total_sales from orders join products on orders.ProductID=products.ProductID group by category;

-- Find average unit price of products
select avg(UnitCost) as avg_unit_price from products;

-- Count the no.of orders per country
select distinct Country, count(Quantity)from customers inner join orders on customers.CustomerID=orders.CustomerID group by Country;

-- Find the minimum and maximum order sales value
select min(Sales) as minimum_sales from orders;
select max(Sales) as maximum_sales from orders;

-- Intermediate sql

-- Show OrderID,CustomerName,Country, Sales
select OrderID,CustomerName, Country,Sales from customers inner join orders on customers.CustomerID=orders.CustomerID;

-- List all orders along with productname and category
select*from orders ;
select*from products;

select ProductName,Category from orders left join products on orders.ProductID=products.ProductID;

-- Find total sales by country
select distinct country, sum(sales) as total_sales from customers join orders on customers.CustomerID=orders.CustomerID group by country;

-- Show customer name , segment, and total sales
select*from customers;
select *from orders;
select CustomerName, Segment, sum(Sales) as total_sales from customers Left join orders on customers.CustomerID=orders.CustomerID GROUP BY CustomerName,Segment;

-- Show customers whose total sales>5000
select CustomerID, sum(Sales) from orders group by CustomerID having sum(Sales)>5000;

-- Show products that have been sold more than 50 times(total quantity)
select ProductID, sum(Quantity) from orders group by ProductID having sum(Quantity)>50;

-- Find countries with more than 100 orders
select Country , count(OrderID) from customers join orders on customers.CustomerID=orders.CustomerID group by Country having count(OrderID)>100;

-- Find categories where avetage sales per order>500
select*from products;
select Category , avg(UnitCost) from products group by Category having avg(UnitCost)>500;

