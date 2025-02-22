SELECT 
user_id as id, count(*) as num
FROM 
(
    
    SELECT 
    accepter_id as user_id
    FROM RequestAccepted 

    UNION ALL

    SELECT 
    requester_id as user_id
    FROM RequestAccepted 
    
) as requests
GROUP BY user_id
ORDER BY num DESC 
LIMIT 1