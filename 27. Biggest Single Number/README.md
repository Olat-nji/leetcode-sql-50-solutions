# 619. Biggest Single Number

## Problem Statement

### Table: MyNumbers

| Column Name | Type |
|-------------|------|
| num         | int  |

- This table **may contain duplicates** (there is no primary key).
- Each row contains an integer.

### Definition:

A **single number** is a number that **appeared only once** in the `MyNumbers` table.

Find the **largest single number**. If there is **no single number**, return `null`.

---

## Examples

### Example 1:

#### **Input:**
**MyNumbers** table:

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

#### **Output:**

| num |
|-----|
| 6   |

#### **Explanation:**
The single numbers are **1, 4, 5, and 6**.  
Since **6 is the largest single number**, we return it.

---

### Example 2:

#### **Input:**
**MyNumbers** table:

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

#### **Output:**

| num  |
|------|
| null |

#### **Explanation:**
There are **no single numbers** in the input table, so we return `null`.
