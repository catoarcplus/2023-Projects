-- list movies released on 2018 or after (in alpabetical order)
SELECT title FROM movies
WHERE year >= 2018
ORDER BY title ASC;