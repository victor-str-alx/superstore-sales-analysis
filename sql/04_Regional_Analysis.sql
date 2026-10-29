-- 04_Regional_Analysis
-- Compare sales, profit, and profit margin by region.
SELECT
  Region,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY Region
ORDER BY total_sales DESC;
