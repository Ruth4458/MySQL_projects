-- Question: Customers Who Bought From Multiple Categories
-- Definition: Identify customers who purchased products from more than one distinct category.
-- Logic: Count distinct product categories per customer and return only those with category_count > 1.


SELECT c.customer_id, c.first_name, c.last_name, COUNT(DISTINCT category) num_category
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id
JOIN products p
ON p.product_id = o.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING num_category > 1;
    
