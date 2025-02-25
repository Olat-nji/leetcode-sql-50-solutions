# 185. Department Top Three Salaries  

**Difficulty:** Hard  

## **Problem Statement**  

A company's executives are interested in seeing who earns the most money in each of the company's departments.  
A **high earner** in a department is an employee who has a **salary in the top three unique salaries** for that department.  

Write a SQL solution to find the employees who are high earners in each of the departments.  

### **Table: Employee**  

| Column Name  | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| salary      | int     |
| departmentId| int     |

- `id` is the **primary key** (unique identifier for employees).  
- `departmentId` is a **foreign key** referencing the `id` in the `Department` table.  
- Each row contains an employee's ID, name, salary, and department ID.  

### **Table: Department**  

| Column Name | Type    |
|------------|---------|
| id         | int     |
| name       | varchar |

- `id` is the **primary key** (unique identifier for departments).  
- Each row contains a department's ID and name.  

## **Expected Output Format**  

Return the result table in any order.  

### **Example Input**  

#### **Employee Table**  

| id | name  | salary | departmentId |
|----|-------|--------|--------------|
| 1  | Alice | 8000   | 1            |
| 2  | Bob   | 6000   | 1            |
| 3  | Charlie | 9000  | 2            |
| 4  | David | 7000   | 1            |
| 5  | Eve   | 6000   | 2            |
| 6  | Frank | 8000   | 2            |

#### **Department Table**  

| id | name  |
|----|-------|
| 1  | HR    |
| 2  | IT    |

### **Expected Output**  

| Department | Employee | Salary |
|------------|---------|--------|
| HR         | Alice   | 8000   |
| HR         | David   | 7000   |
| HR         | Bob     | 6000   |
| IT         | Charlie | 9000   |
| IT         | Frank   | 8000   |
| IT         | Eve     | 6000   |

## **Constraints**  

- `1 <= salary <= 100000`
- There will be at most **1000** employees.  

---
