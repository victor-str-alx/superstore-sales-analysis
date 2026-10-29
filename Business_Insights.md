# Retail Sales & Profitability Analysis
## Business Insights

**Dataset:** Superstore Sales  
**Tools:** Microsoft Excel, Google BigQuery (SQL)

## Executive Summary

This project analyzes 9,994 retail order records to understand sales performance, profitability, and trends across product categories, sub-categories, regions, years, and months. The dataset contains total sales of $2,297,200.86, total profit of $286,397.02, and total quantity of 37,873 units.

## Key Findings

### 1. Technology leads in sales and profit

Technology generated **$836,154.03 in sales** and **$145,454.95 in profit**, with a **17.40% profit margin**. It was the strongest category by both sales and total profit.

### 2. Furniture has a low profit margin

Furniture generated **$741,999.80 in sales**, but only **$18,451.27 in profit**, resulting in a **2.49% profit margin**. Its margin is substantially lower than Technology (17.40%) and Office Supplies (17.04%).

### 3. Tables is the largest loss-making sub-category

Tables generated a total loss of **$17,725.48**, with a **-8.56% profit margin**. Bookcases (-$3,472.56; -3.02%) and Supplies (-$1,189.10; -2.55%) also reported negative total profit.

### 4. West is the strongest-performing region

West generated **$725,457.82 in sales** and **$108,418.45 in profit**, with a **14.94% profit margin**. It had the highest sales, profit, and margin among the four regions. Central had the lowest regional margin at **7.92%**.

### 5. 2017 recorded the highest annual sales and profit

In 2017, sales reached **$733,215.26** and profit reached **$93,439.27**, both the highest annual totals in the dataset. The annual profit margin was **12.74%**, below the 2016 peak of **13.43%**.

### 6. Sales peak in November; profit peaks in December

When data from all four years are combined, November recorded the highest monthly sales (**$352,461.07**), while December recorded the highest monthly profit (**$43,369.19**). September was another strong sales month, with **$307,649.95** in combined sales.

*Note: These monthly figures aggregate the same calendar month across all four years. They do not establish that the pattern occurred in every individual year.*

## Business Recommendations

- **Review Furniture profitability:** investigate pricing, discounting, product costs, and product mix to understand the low category margin.
- **Investigate loss-making sub-categories:** examine Tables, Bookcases, and Supplies to identify the drivers of negative profit before making pricing or assortment decisions.
- **Study regional differences:** compare product mix, discounting, and sales patterns in Central with the stronger-performing West region. The current analysis identifies a margin gap but does not establish its cause.
- **Plan for seasonal demand:** use the strong combined November–December results as a starting point for inventory and marketing planning, then validate the pattern by comparing individual years.
- **Monitor margin as sales grow:** 2017 had the highest sales and profit, but its margin was below the 2016 peak. Track revenue growth alongside profitability.

## Dataset Validation

The dataset was validated in BigQuery against the existing Excel analysis.

| Metric | Validated result |
|---|---:|
| Total records | 9,994 |
| Total sales | $2,297,200.86 |
| Total profit | $286,397.02 |
| Total quantity | 37,873 |

*Minor differences in the last decimal places may appear in BigQuery because of numeric precision.*

## SQL Skills Demonstrated

- `SELECT`, `COUNT`, and `SUM` for selecting fields and validating totals
- `GROUP BY` for comparing categories, sub-categories, regions, years, and months
- `ORDER BY` for ranking results
- `EXTRACT` and `FORMAT_DATE` for date analysis
- Calculated profit margin: `SUM(Profit) / SUM(Sales) * 100`

## Project Scope and Limitations

This is a descriptive analysis of the available Superstore dataset. It identifies patterns and areas worth investigating, but it does not prove why those patterns occurred. Explanations involving pricing, discounts, costs, inventory, or customer behavior require additional analysis.
