```markdown
# 626. Exchange Seats

**Solved**  
**Medium**  
**Topics:** SQL  

## **Table: Seat**

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| student     | varchar |

- `id` is the primary key (unique value) column for this table.
- Each row of this table indicates the name and the ID of a student.
- The `id` sequence always starts from **1** and increments continuously.

---

## **Problem Statement**
Write a SQL query to **swap the seat `id`** of every **two consecutive students**.  
- If the **number of students is odd**, the last student’s `id` remains unchanged.
- Return the result table **ordered by `id` in ascending order**.

---

## **Example 1**

### **Input:**  
**Seat table:**
| id | student  |
|----|---------|
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |

### **Output:**  
| id | student  |
|----|---------|
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |

### **Explanation:**
- Swap the first and second students.
- Swap the third and fourth students.
- The fifth student remains unchanged because the number of students is odd.

---

## **Constraints**
- The number of students (`n`) is at least **1**.
- The `id` values are continuous, starting from `1` (i.e., no missing numbers).

---
```