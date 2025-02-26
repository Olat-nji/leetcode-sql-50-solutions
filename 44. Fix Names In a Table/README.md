# 1667. Fix Names in a Table

**Solved**  
**Easy**  

## Problem Statement

### **Table: Users**
| Column Name | Type    |
|------------|--------|
| user_id    | int    |
| name       | varchar |

- `user_id` is the **primary key** (column with unique values) for this table.
- This table contains the **ID and the name** of the user.
- The name consists of only **lowercase and uppercase characters**.

---

### **Task**
Write a solution to fix the names so that **only the first character is uppercase** and the rest are **lowercase**.

Return the result table **ordered by `user_id`**.

---

## **Example 1**

### **Input:**
**Users table:**
```plaintext
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | aLice |
| 2       | bOB   |
+---------+-------+
```

### **Output:**
```plaintext
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Alice |
| 2       | Bob   |
+---------+-------+

