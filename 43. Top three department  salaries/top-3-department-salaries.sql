SELECT 
Department,
Employee,
Salary
FROM
(
SELECT 
Department.name as Department, 
Employee.name as Employee, 
Employee.salary as Salary,
DENSE_RANK() OVER (
    PARTITION BY Employee.departmentId 
    ORDER BY salary DESC
    ) as row_num
FROM 
Employee Join Department
ON Employee.departmentId = Department.id
) as EmployeeTop 
WHERE row_num<=3