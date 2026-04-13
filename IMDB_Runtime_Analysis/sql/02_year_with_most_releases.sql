-- The year with the highest number of movie releases

SELECT release_year, count(*) AS num_movies
FROM movies.imdb_top_1000
GROUP BY release_year
ORDER BY num_movies DESC
LIMIT 1;
