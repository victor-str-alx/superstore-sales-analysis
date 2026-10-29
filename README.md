# Superstore Sales Analysis

A retail sales and profitability analysis project using Microsoft Excel and Google BigQuery (SQL), with a Power BI dashboard planned as the next stage.

## Project objective

Analyze 9,994 Superstore records to understand sales, profit, profit margin, and performance by product category, sub-category, region, year, and calendar month.

## Tools

- **Microsoft Excel** — data inspection, pivot-style analysis, charts, and project summary
- **Google BigQuery / SQL** — data validation and aggregated analysis
- **Power BI** — planned dashboard stage

## Validated dataset metrics

| Metric | Result |
|---|---:|
| Records | 9,994 |
| Total sales | $2,297,200.86 |
| Total profit | $286,397.02 |
| Total quantity | 37,873 |

BigQuery totals were checked against the existing Excel analysis.

## Key findings

- **Technology** had the highest sales ($836,154.03) and profit ($145,454.95), with a 17.40% margin.
- **Furniture** had a low 2.49% profit margin despite $741,999.80 in sales.
- **Tables** was the largest loss-making sub-category, with -$17,725.48 profit and a -8.56% margin.
- **West** was the strongest region by sales, profit, and margin (14.94%).
- **2017** had the highest annual sales ($733,215.26) and profit ($93,439.27), while its margin (12.74%) was below the 2016 peak (13.43%).
- Aggregating the same month across all four years, **November** had the highest sales and **December** the highest profit. This combined-month view does not prove the pattern occurred in each individual year.

## Business recommendations

1. Investigate the pricing, discounting, product costs, and product mix associated with Furniture's low margin.
2. Analyze Tables, Bookcases, and Supplies to understand their negative total profit before making pricing or assortment decisions.
3. Investigate why Central's margin (7.92%) is below West's (14.94%).
4. Validate the combined November–December pattern against each individual year before using it for seasonal planning.
5. Track profit margin alongside sales growth.

These are descriptive findings. The analysis identifies patterns to investigate and does not by itself establish their causes.

## Repository structure

```text
superstore-sales-analysis/
├── README.md
├── Business_Insights.md
├── SQL_Analysis_Documentation.md
├── sql/
│   └── (BigQuery query files)
├── excel/
│   └── (Excel workbook)
└── screenshots/
    └── (selected evidence of queries and results)
```

## SQL analysis included

Six saved BigQuery queries cover:
1. Data validation
2. Category analysis
3. Sub-category profitability
4. Regional analysis
5. Annual trends
6. Combined calendar-month trends

Full SQL and explanations are provided in [SQL_Analysis_Documentation.md](SQL_Analysis_Documentation.md). Business conclusions and recommendations are in [Business_Insights.md](Business_Insights.md).

## How to review the project

Start with this README for the overview, then review the insights and SQL documentation. Dashboard files and screenshots will be added as the project progresses.
