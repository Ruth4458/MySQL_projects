-- Question: Revenue by Country
-- Definition: Calculate total revenue generated from each country.
-- Logic: Join customers with orders, group by country, and sum total revenue.
-- Skills: JOIN, GROUP BY, SUM, ORDER BY.


SELECT c.country, SUM(o.total_amount) AS tot_rev
FROM orders AS o
JOIN customers AS c
ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY tot_rev DESC;
