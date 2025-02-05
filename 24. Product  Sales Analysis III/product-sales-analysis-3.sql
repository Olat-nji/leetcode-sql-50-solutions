SELECT 
Sales.product_id AS product_id, 
Sales.year AS first_year,
Sales.quantity AS quantity,
Sales.price AS price 
FROM Sales WHERE (product_id, year) IN (
    SELECT product_id,
min(year) AS year FROM Sales 
GROUP BY product_id
) 