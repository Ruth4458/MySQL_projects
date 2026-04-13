### IMDb Top 1000 SQL Analysis
A data exploration project analyzing the IMDb Top 1000 movies dataset using SQL.
The goal is to answer key analytical questions about genres, ratings, runtimes, and release trends.

## Dataset Description
The dataset contains the following columns:

id – unique identifier

title – movie title

director – director name

release_year – year of release

runtime – runtime in minutes

genre – primary genre

rating – IMDb rating (decimal)

metascore – Metacritic score

gross – box office gross


## Analysis Questions & Insights
1️. Average Runtime of Movies for Each Genre

SQL

SELECT genre, AVG(runtime) AS avg_runtime
FROM movies.imdb_top_1000
GROUP BY genre
ORDER BY avg_runtime DESC;

Result

| Genre       | Avg Runtime |
|-------------|-------------|
| Western     | 150.00      |
| Biography   | 137.10      |
| Adventure   | 135.78      |
| Action      | 133.18 	    |
| Drama       | 124.96      |
| Crime       | 124.94      |
| Mystery     | 120.33      |
| Fantasy     | 118.33      |
| Comedy      | 113.86      |
| Thriller    | 108.00      |
| Horror      | 101.54      |
| Film-Noir   | 100.50      |
| Family      | 100.00      |
| Animation   | 99.88       |

Insight

Western films have the longest average runtime, reflecting their epic storytelling style.
Biography, Adventure, and Action films also trend longer, while Comedy, Horror, and Animation tend to be shorter and more fast‑paced.

2. Which Year Had the Highest Number of Movie Releases?

SQL

SELECT release_year, COUNT(*) AS num_movies
FROM movies.imdb_top_1000
GROUP BY release_year
ORDER BY num_movies DESC
LIMIT 1;

Result

| Year     |Number of Movies |
| ---------| ----------------|
| 2014     | 31              |

Insight

2014 stands out as the strongest year in the dataset, producing the highest number of critically acclaimed films. 
This suggests a particularly impactful year for global cinema.

3. Top 5 Genres With the Highest Average IMDb Rating

SQL

SELECT genre, AVG(rating) AS avg_rating
FROM movies.imdb_top_1000
GROUP BY genre
ORDER BY avg_rating DESC
LIMIT 5;

Result

| Genre     |   Avg Rating |
| ----------| -------------|
| Western   | 8.15         |
| Mystery   | 8.10         |
| Crime     | 8.03         |
| Adventure | 7.99         |
| Action    | 7.99         |

Insight

Western and Mystery films lead in average ratings, indicating strong critical reception. 
Crime and Adventure also perform consistently well, showing broad audience appeal.

4. Count How Many Movies Have a Rating Above 8.0

SQL

SELECT COUNT(*) AS num_movies_above_8
FROM movies.imdb_top_1000
WHERE rating > 8;

Result
| Movies Rated Above 8.0 |
| -----------------------|
| 342                    |

Insight

A significant portion of the dataset (over one‑third) consists of movies rated above 8.0, 
highlighting the high quality of films included in the IMDb Top 1000.

5. Longest Movie in Each Genre

SQL

SELECT 
    t1.genre,
    t1.title,
    t1.runtime
FROM movies.imdb_top_1000 t1
WHERE t1.runtime = (
    SELECT MAX(t2.runtime)
    FROM movies.imdb_top_1000 t2
    WHERE t2.genre = t1.genre
)
ORDER BY t1.genre;

Result

| Genre       | Title                              | Runtime |
| ------------| ---------------------------------- | ------- |
| Action      | Gangs of Wasseypur                 | 321     |
| Adventure   | The Ten Commandments               | 220     |
| Animation   | Spider‑Man: Across the Spider‑Verse | 140     |
| Biography   | The Irishman                       | 209     |
| Comedy      | Short Cuts                         | 188     |
| Crime       | Once Upon a Time in America        | 229     |
| Drama       | Hamlet                             | 242     |
| Western     | Once Upon a Time in the West       | 165     |

Insight

Action and Crime genres contain some of the longest films, often due to complex narratives. 
Drama also includes several long, character‑driven epics.

6. Average Rating per Genre

SQL

SELECT genre, AVG(rating) AS avg_rating
FROM movies.imdb_top_1000
GROUP BY genre
ORDER BY avg_rating DESC;

Result

| Genre     | Avg Rating |
| ----------| ---------- |
| Western   | 8.15       |
| Mystery   | 8.10       |
| Crime     | 8.03       |
| Adventure | 7.99       |
| Action    | 7.99       | 
| Biography | 7.97       |
| Drama     | 7.97       |
| Film-Noir | 7.95       |
| Animation | 7.94       |
| Horror    | 7.92       |
| Comedy    | 7.90       |
| Family    | 7.80       |
| Fantasy   | 7.77       |
| Thriller  | 7.70       |

Insight

Western and Mystery genres again top the list, showing strong consistency in both runtime and rating quality. 
Thriller and Fantasy rank lower, suggesting more variability in audience reception.

7. Movies With Above‑Average Runtime

SQL

SELECT
    title,
    genre,
    runtime
FROM movies.imdb_top_1000
WHERE runtime > (
    SELECT AVG(runtime)
    FROM movies.imdb_top_1000
)
ORDER BY runtime DESC;

Results (Top samples)

| Title                        | Genre       | Runtime |
| ---------------------------- | ------------| ------- |
| Gangs of Wasseypur           | Action      | 321     |
| Zack Snyder’s Justice League | Action      | 242     |
| Hamlet                       | Drama       | 242     |
| Gone with the Wind           | Drama       | 238     |
| Once Upon a Time in America  | Crime       | 229     |

Insight
Many of the longest films belong to Action, Drama, and Crime genres. 
These genres often require extended runtimes for world‑building, character development, and complex storytelling.


##Final Notes
This project demonstrates

-SQL querying and data extraction

-Aggregation, grouping, and filtering

-Use of subqueries and correlated subqueries

-Analytical interpretation of results

-Clear and professional documentation





