SELECT 
DISTINCT num as ConsecutiveNums 
FROM (
    SELECT 
    num,
    LEAD(num,1) OVER () as next_num,
    LAG(num,1) OVER () as prev_num
    FROM Logs 
) AS Logs
WHERE num=next_num && num = prev_num