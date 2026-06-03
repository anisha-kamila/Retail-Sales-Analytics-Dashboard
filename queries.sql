---Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales;
---Regionwise Sales
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region;
---Top 5 Products
SELECT "Product Name", SUM(Sales) AS Total_Sales
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 5;
---Categorieswise Profit
SELECT Category, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category;
---Monthly Sales Trend
SELECT strftime('%Y-%m', "Order Date") AS Month,
       SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY Month
ORDER BY Month;
---Average Profit by Region
SELECT Region,
       ROUND(AVG(Profit),2) AS Avg_Profit
FROM sales
GROUP BY Region;