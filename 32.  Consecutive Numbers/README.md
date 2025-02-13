# 180. Consecutive Numbers

## Problem Statement

Given a table `Logs`, find all numbers that appear **at least three times consecutively**.

Return the result table in **any order**.

---

## Table: `Logs`

| Column Name | Type    |
|------------|--------|
| id         | int    |
| num        | varchar |

- `id` is the **primary key** for this table.
- `id` is an **auto-increment** column starting from `1`.

---

## Example 1:

### **Input:**
#### `Logs` table:
| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

### **Output:**
| ConsecutiveNums |
|-----------------|
| 1               |

### **Explanation:**
- The number **1** appears consecutively **three times** (`1 → 1 → 1`).
- No other number meets this condition.

---

## Constraints:
- The `Logs` table contains at least **one row**.
