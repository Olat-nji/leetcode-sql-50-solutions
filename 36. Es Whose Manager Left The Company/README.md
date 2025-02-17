# 1978. Employees Whose Manager Left the Company

## Problem Statement

### Table: Employees

| Column Name  | Type    |
|-------------|---------|
| employee_id | int     |
| name        | varchar |
| manager_id  | int     |
| salary      | int     |

- `employee_id` is the primary key for this table.
- This table contains information about employees, their salaries, and the ID of their manager.
- Some employees do not have a manager (`manager_id` is null).

### Task

Find the IDs of employees:
- Whose salary is **strictly less than $30,000**.
- Whose **manager left the company** (i.e., their `manager_id` does not exist in the `Employees` table).

Return the result **ordered by employee_id**.

---

## Example 1

### **Input: Employees Table**

| employee_id | name      | manager_id | salary |
|------------|-----------|------------|--------|
| 3          | Mila      | 9          | 60301  |
| 12         | Antonella | null       | 31000  |
| 13         | Emery     | null       | 67084  |
| 1          | Kalel     | 11         | 21241  |
| 9          | Mikaela   | null       | 50937  |
| 11         | Joziah    | 6          | 28485  |

---

### **Output:**

| employee_id |
|------------|
| 11         |

---

### **Explanation**
- Employees with a salary **less than $30,000**:  
  - **1 (Kalel)**
  - **11 (Joziah)**

- Checking their **managers**:
  - **Kalel (employee 1)** has manager **11 (Joziah)** → Still in the company.
  - **Joziah (employee 11)** has manager **6**, but **employee 6 does not exist** in the table, meaning the manager left.

Thus, the result is **employee 11**.
