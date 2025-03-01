```markdown
# 176. Second Highest Salary

**Solved**  
**Medium**  
**Topics**  
**Companies**  

---

## Problem Statement

Table: **Employee**

```plaintext
+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
```

- `id` is the **primary key** (column with unique values) for this table.
- Each row of this table contains information about the salary of an employee.

Write a solution to find the **second highest distinct salary** from the `Employee` table.  
If there is **no second highest salary**, return `null` (`None` in Pandas).

---

## Example 1

**Input:**  
**Employee table:**
```plaintext
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
```
**Output:**  
```plaintext
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
```

---

## Example 2

**Input:**  
**Employee table:**
```plaintext
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
```
**Output:**  
```plaintext
+---------------------+
| SecondHighestSalary |
+---------------------+
| null                |
+---------------------+
```
```