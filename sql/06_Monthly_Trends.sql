-- 06_Monthly_Trends
-- Aggregate the same calendar month across all years in the dataset.
-- This does not show a separate monthly trend for each year.
SELECT
  EXTRACT(MONTH FROM `Order Date`) AS month_number,
  FORMAT_DATE('%B', DATE_TRUNC(`Order Date`, MONTH)) AS month_name,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY month_number, month_name
ORDER BY month_number;
