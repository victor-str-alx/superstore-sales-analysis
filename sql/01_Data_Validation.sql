-- 01_Data_Validation
-- Validate row count and key numeric totals.
SELECT
  COUNT(*) AS total_rows,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  SUM(Quantity) AS total_quantity
FROM `retail-sales-portofolio.superstore.orders`;
