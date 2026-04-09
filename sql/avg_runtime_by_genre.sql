SELECT genre, AVG(runtime) AS avg_runtime
FROM movies.imdb_top_1000
WHERE release_year >= 2000
GROUP BY genre
Having avg_runtime > 120
ORDER BY avg_runtime DESC;