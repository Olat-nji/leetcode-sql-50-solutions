SELECT 
* 
FROM 
Patients 
WHERE LOCATE(' DIAB1',conditions,1) != 0 OR 
SUBSTR(conditions,1,5) = 'DIAB1'

