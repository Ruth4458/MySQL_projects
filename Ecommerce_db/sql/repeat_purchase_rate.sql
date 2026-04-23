-- Question: Repeat Purchase Rate
-- Definition: The proportion of customers who made more than one purchase.
-- Formula: (Number of repeat customers) / (Total customers who made at least one purchase)


WITH CTE_1 AS (
    SELECT 
        o.customer_id, 
        c.first_name, 
        c.last_name, 
        COUNT(o.customer_id) AS purchase_num
    FROM customers c
    RIGHT JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY o.customer_id, c.first_name, c.last_name
    HAVING purchase_num > 1
),
CTE_2 AS (
    SELECT 
        customer_id,
        COUNT(*) AS purchase_num
    FROM orders
    GROUP BY customer_id
)
SELECT 
    (SELECT COUNT(*) FROM CTE_1) * 1.0 /
    (SELECT COUNT(*) FROM CTE_2) AS repeat_purchase_rate;

		


