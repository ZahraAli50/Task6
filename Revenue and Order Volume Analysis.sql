create database task6_OnlineSales;
use task6_OnlineSales;
select * from online_sales_dataset;


-- Total Customers
select count(distinct CustomerID) as Unique_Customer from online_sales_dataset;

-- Monthly Revenue
select sum(Quantity * UnitPrice) as Revenue, 
Extract(month from InvoiceDate) as Month from online_sales_dataset
group by Month
order by Month desc limit 3;

-- Yearly Revenue
select sum(Quantity * UnitPrice) as Revenue, 
Extract(year from InvoiceDate) as Year from online_sales_dataset
group by Year
order by Year desc;

-- Hourly Revenue
select sum(Quantity * UnitPrice) as Revenue, 
Extract(hour from InvoiceDate) as Hour from online_sales_dataset
group by Hour
order by Hour;



-- Monthly Order Volume
select count(distinct InvoiceNo) as Number_of_orders, 
extract(month from InvoiceDate) as Month from online_sales_dataset
group by Month
order by Number_of_orders desc;



-- Yearly Order Volume
select count(distinct InvoiceNo) as Number_of_orders, 
extract(year from InvoiceDate) as Year from online_sales_dataset
group by Year
order by Number_of_orders desc ;

-- Hourly Order Volume
select extract(hour from InvoiceDate)as Hour, 
count(distinct InvoiceNo) as Number_of_orders from online_sales_dataset
group by Hour
order by Number_of_orders desc;





