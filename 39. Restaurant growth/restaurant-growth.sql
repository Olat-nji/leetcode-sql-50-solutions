SELECT 
visited_on,
(
    SELECT SUM(amount) FROM Customer 
    WHERE 
    visited_on BETWEEN DATE_SUB(main.visited_on, INTERVAL 6 DAY) AND main.visited_on

) as amount, 
(ROUND(
    (SELECT SUM(amount)/7 FROM Customer 
    WHERE 
    visited_on BETWEEN DATE_SUB(main.visited_on, INTERVAL 6 DAY) AND main.visited_on)
,2)
) as average_amount
FROM customer as main
WHERE visited_on >=(
    SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY)
    FROM customer
)
GROUP BY visited_on