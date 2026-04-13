-- Find movies with above-average runtime compared to all movies.
SELECT
	title,
    genre,
    runtime
FROM movies.imdb_top_1000
WHERE runtime > (
	SELECT AVG(runtime)
    FROM movies.imdb_top_1000
)
ORDER BY runtime DESC

