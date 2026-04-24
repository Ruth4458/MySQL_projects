-- Question: Highest Average Quantity per Product
-- Definition: Determine which products have the highest average quantity ordered across all orders.
-- Logic: Group by product and calculate AVG(quantity) to compare average order sizes.


SELECT p.product_name, AVG(o.quantity) AS avg_quantity
FROM orders o
JOIN products p
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY avg_quantity DESC;
