-- Monthly Revenue Trend
SELECT strftime('%Y-%m', OrderDate) AS Month,
       SUM(Revenue) AS TotalRevenue
FROM sales
GROUP BY Month
ORDER BY Month;

-- Top Categories by Revenue
SELECT Category, SUM(Revenue) AS Revenue
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;

-- Customer Lifetime Value
SELECT CustomerID, SUM(Revenue) AS CLV
FROM sales
GROUP BY CustomerID
ORDER BY CLV DESC;
