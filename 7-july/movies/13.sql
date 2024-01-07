-- list the names of all people who starred in a movie in which kevin bacon also starred in
SELECT DISTINCT name FROM people
JOIN stars ON stars.person_id = people.id
JOIN movies ON movies.id = stars.movie_id
WHERE movies.id IN
(SELECT movies.id FROM movies
JOIN stars ON stars.movie_id = movies.id
JOIN people ON people.id = stars.person_id
WHERE people.name = "kevin Bacon" AND people.birth = "1958")
AND people.name != "Kevin Bacon";