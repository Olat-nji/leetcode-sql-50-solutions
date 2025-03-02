```markdown
# 1484. Group Sold Products By The Date

**Solved**  
**Easy**  

## Problem Statement

### Table: `Activities`

| Column Name | Type    |
|-------------|---------|
| sell_date   | date    |
| product     | varchar |

- There is no primary key (column with unique values) for this table.
- The table may contain duplicates.
- Each row represents a product sold on a specific date.

---

## Task

Write a SQL query to find, for each date, the number of different products sold and their names.

- The sold product names for each date should be sorted **lexicographically**.
- The result should be ordered by `sell_date`.

---

## Example

### **Input:**
#### `Activities` table:

| sell_date  | product     |
|------------|------------|
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |

---

### **Output:**

| sell_date  | num_sold | products                     |
|------------|---------|------------------------------|
| 2020-05-30 | 3       | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2       | Bible,Pencil                 |
| 2020-06-02 | 1       | Mask                         |

---

## Explanation

- **2020-05-30**: The sold products were **Headphone, Basketball, T-Shirt**.  
  - Sorting lexicographically → **Basketball, Headphone, T-Shirt**  
  - `num_sold = 3`
  
- **2020-06-01**: The sold products were **Pencil, Bible**.  
  - Sorting lexicographically → **Bible, Pencil**  
  - `num_sold = 2`

- **2020-06-02**: The sold product was **Mask** (no sorting needed).  
  - `num_sold = 1`

---
```