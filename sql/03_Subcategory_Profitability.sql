-- 03_Subcategory_Profitability
-- Rank sub-categories by total profit, from lowest to highest.
SELECT
  `Sub-Category` AS sub_category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;
