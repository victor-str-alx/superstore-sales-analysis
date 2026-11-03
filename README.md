# Superstore Sales Analysis

A retail sales and profitability analysis project using Microsoft Excel, Google BigQuery (SQL), and Looker Studio.

## Project Objective

Analyze 9,994 Superstore records to understand sales, profit, profit margin, and performance by product category, sub-category, region, year, and calendar month.

## Tools

- **Microsoft Excel** — data inspection, pivot-style analysis, charts, and project summary
- **Google BigQuery / SQL** — data validation and aggregated analysis
- **Looker Studio (Google Data Studio)** — interactive two-page dashboard connected to BigQuery
- **Power BI Desktop** — planned as a follow-up dashboard implementation

## Live Dashboard

[Open the Superstore Sales & Profitability Dashboard in Looker Studio](https://datastudio.google.com/reporting/77a2dc30-0c3a-47a8-bd9b-3626ca4dcce9)

The dashboard contains two pages:

### Sales Overview

- KPI scorecards for Sales, Profit, Profit Margin, and Quantity
- Monthly sales trend (2014–2017)
- Sales by category
- Sales by region
- Interactive date-range and region filters

### Profitability Analysis

- Profit by all 17 sub-categories, including loss-making sub-categories
- Profit by category
- Profit margin by category
- Interactive date-range and region filters

> Dashboard access depends on the Looker Studio sharing settings. The report owner should enable viewer access for anyone with the link before sharing this URL publicly.

## Validated Dataset Metrics

| Metric | Result |
|---|---:|
| Records | 9,994 |
| Total sales | $2,297,200.86 |
| Total profit | $286,397.02 |
| Total quantity | 37,873 |

BigQuery totals were checked against the existing Excel analysis.

## Key Findings

- **Technology** had the highest sales ($836,154.03) and profit ($145,454.95), with a 17.40% margin.
- **Furniture** had a low 2.49% profit margin despite $741,999.80 in sales.
- **Tables** was the largest loss-making sub-category, with -$17,725.48 profit and a -8.56% margin.
- **West** was the strongest region by sales, profit, and margin (14.94%).
- **2017** had the highest annual sales ($733,215.26) and profit ($93,439.27), while its margin (12.74%) was below the 2016 peak (13.43%).
- Aggregating the same month across all four years, **November** had the highest sales and **December** the highest profit. This combined-month view does not prove the pattern occurred in each individual year.

## Business Recommendations

1. Investigate the pricing, discounting, product costs, and product mix associated with Furniture's low margin.
2. Analyze Tables, Bookcases, and Supplies to understand their negative total profit before making pricing or assortment decisions.
3. Investigate why Central's margin (7.92%) is below West's (14.94%).
4. Validate the combined November–December pattern against each individual year before using it for seasonal planning.
5. Track profit margin alongside sales growth.

These are descriptive findings. The analysis identifies patterns to investigate and does not by itself establish their causes.

## Repository Structure

```text
superstore-sales-analysis/
├── README.md
├── Business_Insights.md
├── SQL_Analysis_Documentation.md
├── superstore_sales.xlsx
└── sql/
    ├── 01_Data_Validation.sql
    ├── 02_Category_Analysis.sql
    ├── 03_Subcategory_Profitability.sql
    ├── 04_Regional_Analysis.sql
    ├── 05_Annual_Trends.sql
    └── 06_Monthly_Trends.sql
```

## SQL Analysis Included

Six BigQuery queries cover:

1. Data validation
2. Category analysis
3. Sub-category profitability
4. Regional analysis
5. Annual trends
6. Combined calendar-month trends

Full SQL and explanations are provided in [SQL_Analysis_Documentation.md](SQL_Analysis_Documentation.md). Business conclusions and recommendations are in [Business_Insights.md](Business_Insights.md).

## How to Review the Project

Start with this README for the project overview and live dashboard. Then review the business insights, SQL documentation, individual SQL files, and Excel workbook.

## Project Status

- [x] Dataset validation in BigQuery
- [x] Category, sub-category, regional, annual, and monthly SQL analysis
- [x] Excel analysis workbook
- [x] Business insights and SQL documentation
- [x] Looker Studio dashboard with date and region filters
- [ ] Power BI dashboard (planned follow-up)
