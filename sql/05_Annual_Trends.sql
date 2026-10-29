-- 05_Annual_Trends
-- Aggregate sales and profit by order year.
SELECT
  EXTRACT(YEAR FROM `Order Date`) AS order_year,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY order_year
ORDER BY order_year;
