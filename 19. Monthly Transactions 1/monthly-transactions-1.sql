SELECT 
SUBSTRING(trans_date,1,7) AS month,
country,
COUNT(*) AS trans_count,
SUM(if(state='approved',1,0)) AS approved_count,
SUM(amount) AS trans_total_amount,
SUM(if(state='approved',amount,0)) AS approved_total_amount
FROM Transactions
GROUP BY country, month