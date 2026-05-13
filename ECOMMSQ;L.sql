select * from ecomm limit 5;

SELECT SUM(Sales) AS total_sales
FROM ecomm;

SELECT City, SUM(Sales) AS total_sales
FROM ecomm
GROUP BY City
ORDER BY total_sales DESC
LIMIT 5;

SELECT Category, SUM(Sales) AS total_sales
FROM ecomm
GROUP BY Category
ORDER BY total_sales DESC;

SELECT Region, SUM(Sales) AS total_sales
FROM ecomm
GROUP BY Region
ORDER BY total_sales DESC;

SELECT "customer ID", sales
FROM ecomm;

SELECT Category, SUM(Profit) AS total_profit
FROM ecomm
GROUP BY Category
ORDER BY total_profit DESC;

SELECT Category, SUM(Profit) AS total_profit
FROM ecomm
GROUP BY Category
ORDER BY total_profit ASC;

SELECT MONTH(Order_Date) AS month, SUM(Sales) AS total_sales
FROM ecomm
GROUP BY MONTH(Order_Date)
ORDER BY month;

SELECT AVG(Sales) AS avg_sales
FROM ecomm;

SELECT Category, SUM(Quantity) AS total_quantity
FROM ecomm
GROUP BY Category
ORDER BY total_quantity DESC;

SELECT City, SUM(Profit) AS total_profit
FROM ecomm
GROUP BY City
ORDER BY total_profit DESC;

SELECT Category, SUM(Profit) AS profit
FROM ecomm
WHERE City = 'New York City'
GROUP BY Category
ORDER BY profit DESC;

SELECT 'Sub Category', SUM(Profit) AS profit
FROM ecomm
WHERE City = 'New York City'
GROUP BY 'Sub Category'
ORDER BY profit DESC;

SELECT SUM(Quantity) AS total_quantity
FROM ecomm
WHERE City = 'New York City';

SELECT AVG(Discount) AS avg_discount
FROM ecomm
WHERE City = 'New York City';

SELECT City,
       AVG(Discount) AS avg_discount,
       SUM(Profit) AS total_profit
FROM ecomm
GROUP BY City
ORDER BY total_profit DESC
LIMIT 5 ;

SELECT MONTH('Order Date') AS month, SUM(Profit) AS profit
FROM ecomm
WHERE City = 'New York City'
GROUP BY month;