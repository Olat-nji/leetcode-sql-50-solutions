SELECT ROUND((
    SELECT COUNT(DISTINCT player_id) 
    FROM Activity 
    WHERE (player_id,DATE_SUB(event_date, INTERVAL 1 DAY)) IN(
        SELECT player_id,MIN(event_date) FROM Activity GROUP BY player_id
    )
)/COUNT(DISTINCT player_id),2) AS fraction
FROM Activity