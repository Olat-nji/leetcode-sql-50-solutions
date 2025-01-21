# Write your MySQL query statement below
SELECT w1.id FROM Weather as w1 JOIN Weather as w2 where w1.recordDate = DATE_ADD(w2.recordDate,INTERVAL 1 DAY) and w1.temperature > w2.temperature