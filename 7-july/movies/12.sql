-- list all movies in wich both johnny depp and helena bonham caarter starred in
SELECT title FROM movies
JOIN stars ON stars.movie_id = movies.id
JOIN people ON people.id = stars.person_id
WHERE people.name = "Johnny Depp"
AND title IN
(SELECT title FROM movies
JOIN stars ON stars.movie_id = movies.id
JOIN people ON people.id = stars.person_id
WHERE people.name = "Helena Bonham Carter");