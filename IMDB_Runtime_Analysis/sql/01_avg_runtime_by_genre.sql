-- The average runtime of movies for each genre.

SELECT genre, AVG(runtime) AS avg_runtime
FROM movies.imdb_top_1000
GROUP BY genre
ORDER BY avg_runtime DESC;