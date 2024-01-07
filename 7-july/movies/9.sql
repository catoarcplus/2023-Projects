-- list names of all ppl who starred in a movie released in 2004, order by birth year
SELECT DISTINCT name FROM people
JOIN stars ON stars.person_id = people.id
JOIN movies ON movies.id = stars.movie_id
WHERE movies.year = 2004
ORDER BY people.birth ASC;