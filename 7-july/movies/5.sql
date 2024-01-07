-- list harry potter movies (with release years) in chronological order
SELECT year, title FROM movies
WHERE title LIKE 'Harry Potter%'
ORDER BY year ASC;