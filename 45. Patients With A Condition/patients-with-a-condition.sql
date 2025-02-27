SELECT 
* 
FROM 
Patients 
WHERE LOCATE(' DIAB1',conditions,1) != 0 OR 
SUBSTR(conditions,5,1) = 'DIAB1'

