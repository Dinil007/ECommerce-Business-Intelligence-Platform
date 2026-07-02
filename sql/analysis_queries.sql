-- Total Revenue
SELECT SUM(price) AS Total_Revenue
FROM order_items;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM orders;

-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS Total_Customers
FROM customers;

-- Average Order Value
SELECT AVG(price) AS Average_Order_Value
FROM order_items;

-- Top 10 Product Categories by Revenue
SELECT
    p.product_category_name,
    SUM(oi.price) AS Revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY Revenue DESC
LIMIT 10;

-- Top 10 Most Expensive Products Sold
SELECT
    product_id,
    MAX(price) AS Highest_Price
FROM order_items
GROUP BY product_id
ORDER BY Highest_Price DESC
LIMIT 10;

-- Total Freight Cost
SELECT SUM(freight_value) AS Total_Freight_Cost
FROM order_items;