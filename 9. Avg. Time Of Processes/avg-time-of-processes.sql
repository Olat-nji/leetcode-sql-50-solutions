SELECT A1.machine_id, ROUND(AVG((A2.timestamp-A1.timestamp)),3) as processing_time FROM Activity 
AS A1 JOIN Activity as A2 
ON A1.machine_id = A2.machine_id  
WHERE A1.activity_type='start' AND A2.activity_type='end' GROUP BY A1.machine_id