-- Question: Top 5 Customers by Total Spending
-- Definition: Identify the customers who generated the highest total revenue.
-- Logic: Aggregate total_amount per customer, sort by spending, and return the top 5.
-- Skills: GROUP BY, ORDER BY, SUM, LIMIT.


SELECT c.first_name, c.last_name, c.customer_id, SUM(o.total_amount) AS total_spent
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,
		c.first_name,
        c.last_name
ORDER BY total_spent DESC
LIMIT 5;