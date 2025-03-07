# 1193. Monthly Transactions I

**Solved**  
**Medium**  
**Topics**: SQL  

---

## Problem Statement

### Table: Transactions

| Column Name  | Type    |
|-------------|---------|
| id          | int     |
| country     | varchar |
| state       | enum    |
| amount      | int     |
| trans_date  | date    |

- `id` is the **primary key** of this table.
- The table has information about **incoming transactions**.
- The `state` column is an **enum** of type `["approved", "declined"]`.

### Task

Write an **SQL query** to find, for each **month and country**:
- The **number of transactions** and their **total amount**.
- The **number of approved transactions** and their **total amount**.

Return the result table **in any order**.

---

## Example 1:

### **Input:**
**Transactions table:**

| id  | country | state    | amount | trans_date |
|-----|---------|----------|--------|------------|
| 121 | US      | approved | 1000   | 2018-12-18 |
| 122 | US      | declined | 2000   | 2018-12-19 |
| 123 | US      | approved | 2000   | 2019-01-01 |
| 124 | DE      | approved | 2000   | 2019-01-07 |

### **Output:**
| month   | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
|---------|---------|-------------|----------------|--------------------|-----------------------|
| 2018-12 | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01 | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01 | DE      | 1           | 1              | 2000               | 2000                  |

### **Explanation:**
- In **December 2018**, the **US** had:
  - **2 transactions** (total amount = `1000 + 2000 = 3000`).
  - **1 approved transaction** (amount = `1000`).
- In **January 2019**, the **US** had:
  - **1 transaction** (amount = `2000`).
  - **1 approved transaction** (amount = `2000`).
- In **January 2019**, **DE** had:
  - **1 transaction** (amount = `2000`).
  - **1 approved transaction** (amount = `2000`).
```

