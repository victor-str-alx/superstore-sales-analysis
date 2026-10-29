# SQL Analysis Documentation
## Retail Sales & Profitability Analysis

**Project ID:** `retail-sales-portofolio`  
**Dataset:** `superstore`  
**Table:** `orders`  
**Tools:** Google BigQuery (SQL), Microsoft Excel

## Project Overview

This SQL analysis uses 9,994 Superstore order records to examine sales, profit, and quantity across product categories, sub-categories, regions, years, and months. The BigQuery totals were checked against the existing Excel analysis.

### Validated Dataset Metrics

| Metric | Result |
|---|---:|
| Total records | 9,994 |
| Total sales | $2,297,200.86 |
| Total profit | $286,397.02 |
| Total quantity | 37,873 |

---

## 1. Data Validation

**Saved query:** `01_Data_Validation`

```sql
SELECT
  COUNT(*) AS total_rows,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  SUM(Quantity) AS total_quantity
FROM `retail-sales-portofolio.superstore.orders`;
```

**Purpose:** Checks the number of records and calculates overall sales, profit, and quantity.

**SQL concepts:** `COUNT`, `SUM`, aggregate functions.

**Validated result:** 9,994 rows; sales of $2,297,200.86; profit of $286,397.02; quantity of 37,873.

## 2. Category Analysis

**Saved query:** `02_Category_Analysis`

```sql
SELECT
  Category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY Category
ORDER BY total_sales DESC;
```

**Key results:**

| Category | Sales | Profit | Margin |
|---|---:|---:|---:|
| Technology | $836,154.03 | $145,454.95 | 17.40% |
| Furniture | $741,999.80 | $18,451.27 | 2.49% |
| Office Supplies | $719,047.03 | $122,490.80 | 17.04% |

**Insight:** Technology leads in sales and profit; Furniture has a much lower profit margin.

## 3. Sub-Category Profitability

**Saved query:** `03_Subcategory_Profitability`

```sql
SELECT
  `Sub-Category` AS sub_category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;
```

**Purpose:** Ranks sub-categories from lowest to highest total profit.

**Key results:**
- Tables: -$17,725.48 profit; -8.56% margin
- Bookcases: -$3,472.56 profit; -3.02% margin
- Supplies: -$1,189.10 profit; -2.55% margin
- Copiers: $55,617.82 profit; 37.20% margin
- Phones: $44,515.73 profit; 13.49% margin
- Accessories: $41,936.64 profit; 25.05% margin

## 4. Regional Analysis

**Saved query:** `04_Regional_Analysis`

```sql
SELECT
  Region,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY Region
ORDER BY total_sales DESC;
```

| Region | Sales | Profit | Margin |
|---|---:|---:|---:|
| West | $725,457.82 | $108,418.45 | 14.94% |
| East | $678,781.24 | $91,522.78 | 13.48% |
| Central | $501,239.89 | $39,706.36 | 7.92% |
| South | $391,721.90 | $46,749.43 | 11.93% |

**Insight:** West is strongest by sales, profit, and margin; Central has the lowest regional margin.

## 5. Annual Trends

**Saved query:** `05_Annual_Trends`

```sql
SELECT
  EXTRACT(YEAR FROM `Order Date`) AS order_year,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM `retail-sales-portofolio.superstore.orders`
GROUP BY order_year
ORDER BY order_year;
```

| Year | Sales | Profit | Margin |
|---|---:|---:|---:|
| 2014 | $484,247.50 | $49,543.97 | 10.23% |
| 2015 | $470,532.51 | $61,618.60 | 13.10% |
| 2016 | $609,205.60 | $81,795.17 | 13.43% |
| 2017 | $733,215.26 | $93,439.27 | 12.74% |

**Insight:** 2017 had the highest sales and profit, while 2016 had the highest margin.

## 6. Monthly Trends (Combined Calendar Months)

**Saved query:** `06_Monthly_Trends`

This query combines each calendar month across all four years; it does not show a separate trend for each year.

| Month | Sales | Profit |
|---|---:|---:|
| January | $94,924.84 | $9,134.45 |
| February | $59,751.25 | $10,294.61 |
| March | $205,005.49 | $28,594.69 |
| April | $137,762.13 | $11,587.44 |
| May | $155,028.81 | $22,411.31 |
| June | $152,718.68 | $21,285.80 |
| July | $147,238.10 | $13,832.66 |
| August | $159,044.06 | $21,776.94 |
| September | $307,649.95 | $36,857.48 |
| October | $200,322.98 | $31,784.04 |
| November | $352,461.07 | $35,468.43 |
| December | $325,293.50 | $43,369.19 |

**Insight:** November has the highest combined monthly sales; December has the highest combined monthly profit. Validate this by year before making seasonal decisions.

## Skills Demonstrated

- Data validation using `COUNT` and `SUM`
- Aggregation and grouping
- Sorting and ranking
- Calculated metrics and percentage margins
- Date extraction and month/year analysis
- Translating query results into business questions and recommendations
