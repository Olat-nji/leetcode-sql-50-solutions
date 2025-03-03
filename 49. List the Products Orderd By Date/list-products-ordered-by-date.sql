SELECT Products.product_name as product_name, SUM(Orders.unit) as unit
FROM Products Join Orders ON Products.product_id = Orders.product_id
WHERE 
DATE_FORMAT(Orders.order_date,'%Y-%m')='2020-02' 
GROUP BY Products.product_id
HAVING unit >= 100
