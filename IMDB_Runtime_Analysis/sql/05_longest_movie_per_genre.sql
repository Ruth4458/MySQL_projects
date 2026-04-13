-- The longest movie in each genre
SELECT 
	t1.genre,
    t1.title,
    t1.runtime
FROM movies.imdb_top_1000 t1
WHERE t1.runtime = (
	SELECT MAX(t2.runtime)
    From movies.imdb_top_1000 t2
    WHERE t2.genre = t1.genre
)
ORDER BY t1.genre
