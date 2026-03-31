# e-commerce SQL Analysis

This project operates on SQL to analyze e-commerce data in order to derive useful business insights about consumer behavior, revenue trends, and purchase patterns.

---

## Project Overview

This project aims to show how to extract business insights from relational datasets by simulating real-world data analysis activities using SQL.

---

## Key Analyses

- Customer segmentation based on total spending (High / Medium / Low value)
- Repeat purchase rate calculation
- Monthly revenue trend and Month-over-Month (MoM) growth analysis
- Identification of top-performing cities and products
- Detection of inactive customers based on recent activity
- Customer order ranking and purchase behavior analysis

---

## Key Metrics

- Total Revenue
- Average Order Value
- Repeat Purchase Rate
- Monthly Revenue Growth (MoM)
- Customer Segmentation (High / Medium / Low Value)
- Cancellation Rate
- Inactive Customer Rate (Last 3 Months)
- Top Performing Products & Cities
---

## Queries Included

| File Name | Description |
|----------|------------|
| 01_repeat_purchase.sql |Computes the ratio of returning consumers to repeat purchases |
| 02_mom_growth.sql |Uses LAG() to calculate monthly revenue and MoM growth |
| 03_top_cities.sql |Finds the cities that generate the most revenue |
| 04_segmentation.sql |Divides clients into groups according to their overall spending |
| 05_latest_order_per_customer.sql |Uses window functions to determine each customer's most recent order |
| 06_top_product_by_month.sql |Finds the most profitable products each month |
| 07_inactive_customers_last_3_months.sql |Finds clients that haven't been active for the past three months |
| 08_order_sequence_per_customer.sql |Uses ROW_NUMBER() to assign order sequence numbers to each client |
| 09_cancellation_rate.sql |Identifies the proportion of orders that are cancelled |
| 10_orders_without_payment.sql |Finds orders that don't have a compatible payment record |

---

## Tools & Technologies

- SQL (SQL Server / PostgreSQL compatible)
- Relational Database Concepts
- Window Functions (ROW_NUMBER, RANK, LAG)

---

## Key Skills Demonstrated

- Writing complex SQL queries using JOINs, subqueries, and aggregations
- Applying window functions for ranking and time-based analysis
- Translating business questions into analytical SQL queries
- Performing customer behavior analysis and segmentation

---

## Notes

There is no visualization in this project; rather, it is centered on SQL-based analysis. For dashboarding, it can be expanded using Python (Pandas) or BI tools (Power BI/Tableau).

---

## Author

Dilara Karabacak  
GitHub: https://github.com/dilarakarabacak-data
