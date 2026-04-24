-- Question: Month-over-Month Revenue Growth
-- Definition: Analyze revenue trends by comparing each month's revenue to the previous month.
-- Logic: Compute monthly revenue, use LAG() to access previous month, and calculate growth rate.
-- Skills: CTE/subquery, GROUP BY, window functions (LAG), metric calculation.


SELECT months, 
		revenue, 
        LAG(revenue) OVER(ORDER BY months) AS pre_revenue
	FROM (
		SELECT 
        MONTH(order_date) AS months, 
        SUM(total_amount) AS revenue  
		FROM orders
		GROUP BY months)    
	AS monthly_data;

