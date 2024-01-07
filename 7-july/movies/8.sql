-- list names of all ppl who starred in toy story
SELECT name FROM people
JOIN stars ON stars.person_id = people.id
JOIN movies ON movies.id = stars.movie_id
WHERE movies.title="Toy Story";
