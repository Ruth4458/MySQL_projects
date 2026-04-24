-- Question: Total Revenue by Product
-- Definition: Determine which products generate the highest total revenue.
-- Logic: Join orders with products, sum revenue per product, and rank by total revenue.
-- Skills: JOIN, GROUP BY, SUM, ORDER BY.


SELECT 
    p.product_id,
    p.product_name,
    SUM(o.total_amount) AS total_revenue
FROM orders AS o
JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY 
    p.product_id,
    p.product_name
ORDER BY 
    total_revenue DESC
LIMIT 1;

