```markdown
# 1789. Primary Department for Each Employee

**Easy**

## Problem Statement  
Employees can belong to multiple departments. When an employee joins other departments, they must decide which department is their **primary department**.  

- If an employee **has multiple departments**, their **primary department** is marked with `'Y'` in the `primary_flag` column.  
- If an employee **belongs to only one department**, their `primary_flag` is `'N'`, and that department should be considered **primary**.  

Write a solution to **report all employees with their primary department**.  
Return the result in **any order**.

---

## Table: Employee

| Column Name   | Type   |
|--------------|--------|
| employee_id  | int    |
| department_id | int    |
| primary_flag | varchar |

- `(employee_id, department_id)` is the **primary key** (ensuring unique values).
- `employee_id` represents the **employee's ID**.
- `department_id` represents the **department's ID**.
- `primary_flag` is an **ENUM** of type `('Y', 'N')`:
  - `'Y'` → The department is the **primary department** for the employee.
  - `'N'` → The department is **not primary**.

---

## Example  

### **Input:**  
**Employee table:**

| employee_id | department_id | primary_flag |
|------------|--------------|--------------|
| 1          | 1            | N            |
| 2          | 1            | Y            |
| 2          | 2            | N            |
| 3          | 3            | N            |
| 4          | 2            | N            |
| 4          | 3            | Y            |
| 4          | 4            | N            |

---

### **Output:**  
| employee_id | department_id |
|------------|--------------|
| 1          | 1            |
| 2          | 1            |
| 3          | 3            |
| 4          | 3            |

---

### **Explanation:**  
- **Employee 1** belongs to only **one department (1)** → It is their **primary department**.  
- **Employee 2** belongs to **two departments (1,2)** → `department_id = 1` is marked **primary (`Y`)**.  
- **Employee 3** belongs to only **one department (3)** → It is their **primary department**.  
- **Employee 4** belongs to **three departments (2,3,4)** → `department_id = 3` is marked **primary (`Y`)**.  
```