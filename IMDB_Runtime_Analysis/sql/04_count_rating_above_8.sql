-- Count how many movies have a rating above 8.0

SELECT count(*) AS num_movies_above_8
FROM movies.imdb_top_1000
WHERE rating > 8;

