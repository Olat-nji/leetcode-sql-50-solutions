# 570. Managers with at Least 5 Direct Reports

**Difficulty:** Medium  
**Topics:** SQL, Aggregations  

---

## Problem Statement

You are given a table named **Employee** that contains information about employees, their departments, and their managers.

### Table: Employee
| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

- `id` is the primary key (unique values) for this table.
- Each row represents an employee, their department, and the ID of their manager.
- If `managerId` is `null`, the employee does not have a manager.
- No employee will manage themselves.

---

### Task

Write a solution to find the names of managers who have at least **five direct reports**.  
- Return the result table in **any order**.

---

### Example

#### Input:
**Employee table:**
| id  | name  | department | managerId |
|-----|-------|------------|-----------|
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |

#### Output:
| name  |
|-------|
| John  |

---

### Explanation:
- John has **5 direct reports** (Dan, James, Amy, Anne, and Ron). Therefore, John is included in the result.
- No other employee has at least 5 direct reports.

---

### Notes:
- Use an aggregation query to count the number of direct reports for each manager.
- Filter for managers with 5 or more direct reports.
- Return the names of these managers.
