Ecommerce SQL Analysis Project

This project contains SQL queries that answer key business questions using an ecommerce dataset.
Each query focuses on a specific analytical task and demonstrates practical SQL skills such as 
joins, grouping, filtering, CTEs, and metric calculations.

Project Structure

ecommerce_sql_project/
│
├── sql/
│   ├── repeat_purchase_rate.sql
│   ├── top_5_customers_by_total_spending.sql
│   ├── top_product_by_revenue.sql
│   ├── average_order_value.sql
│   ├── customer_category_diversity.sql
│   ├── highest_avg_quantity_per_product.sql
│   ├── month_over_month_revenue_growth.sql
│   └── revenue_by_country.sql
│
├── data/
│   └── (CSV files used for analysis)
│
└── README.md


1. Repeat Purchase Rate

Result: 0.50000 (50%)
Meaning: Half of all customers made more than one purchase.
Skills: CTEs, GROUP BY, HAVING, metric calculation.

2. Top 5 Customers by Total Spending

Result: Identifies the highest‑value customers based on total revenue.
Meaning: Helps understand customer value distribution and potential VIP segments.
Skills: GROUP BY, SUM, ORDER BY, LIMIT.

3. Total Revenue by Product

Result: Ranks products by total revenue generated.
Meaning: Highlights top‑performing products and supports inventory or marketing decisions.
Skills: JOINs, aggregation, revenue calculation.

4. Average Order Value (AOV)

Result: Shows the average revenue per order.
Meaning: A core ecommerce KPI used to measure customer purchasing behavior.
Skills: SUM, COUNT, metric calculation.

5. Customers Buying from Multiple Categories

Result: Identifies customers who purchase across different product categories.
Meaning: Useful for cross‑selling, segmentation, and understanding customer diversity.
Skills: COUNT(DISTINCT), HAVING, JOINs.

6. Highest Average Quantity per Product

Result: Shows which products are typically purchased in larger quantities.
Meaning: Helps identify bulk‑purchase items and informs pricing or bundling strategies.
Skills: AVG, GROUP BY, ORDER BY.

7. Month‑over‑Month Revenue Growth

Result: Compares monthly revenue to the previous month.
Meaning: Reveals growth trends, seasonality, and business momentum.
Skills: Window functions (LAG), time‑series analysis.

8. Revenue by Country

Result: Breaks down total revenue by customer country.
Meaning: Supports geographic segmentation and international strategy.
Skills: JOINs, GROUP BY, SUM.