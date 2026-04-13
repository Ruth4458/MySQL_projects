-- The top 5 genres with the highest average IMDB rating

SELECT 
	genre, 
	AVG(rating) AS avg_rating
FROM movies.imdb_top_1000
GROUP BY genre
ORDER BY avg_rating DESC
LIMIT 5;