(SELECT Users.name as results
FROM 
MovieRating JOIN Users ON MovieRating.user_id=Users.user_id
GROUP BY Users.user_id
ORDER BY COUNT(*) DESC, Users.name
LIMIT 1)

UNION ALL

(
    SELECT Movies.title as results
FROM 
MovieRating JOIN Movies ON MovieRating.movie_id=Movies.movie_id
WHERE EXTRACT(YEAR_MONTH FROM MovieRating.created_at) =202002
GROUP BY Movies.movie_id
ORDER BY AVG(rating) DESC, Movies.title LIMIT 1 
)
