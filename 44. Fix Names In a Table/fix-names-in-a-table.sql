SELECT 
user_id, 
CONCAT(SUBSTR(UPPER(name),1,1),SUBSTR(LOWER(name),2,CHAR_LENGTH(name)-1)) as name 
FROM
Users 
ORDER BY user_id

-- OR

SELECT 
user_id, 
CONCAT(
    LEFT(UPPER(name),1),
RIGHT(LOWER(name),LENGTH(name)-1)
 ) as name 
FROM
Users 
ORDER BY user_id