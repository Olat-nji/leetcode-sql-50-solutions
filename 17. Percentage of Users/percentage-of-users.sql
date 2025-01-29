SELECT Register.contest_id, 

ROUND(
(COUNT(Register.contest_id)/
(
    SELECT 
    COUNT(*) FROM Users 
))*100
,2) as percentage

 FROM Register  
 GROUP BY Register.contest_id ORDER BY percentage DESC, Register.contest_id