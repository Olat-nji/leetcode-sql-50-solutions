SELECT 
managers.employee_id, managers.name,
COUNT(*) AS reports_count, 
ROUND(AVG(Employees.age)) AS average_age 
FROM 
Employees INNER JOIN Employees AS managers 
ON Employees.reports_to = managers.employee_id
GROUP BY Employees.reports_to ORDER BY managers.employee_id