# 1907. Count Salary Categories

## Problem Statement
You are given a table `Accounts` that contains information about the monthly income of various bank accounts.

### Table: `Accounts`
| Column Name  | Type |
|-------------|------|
| account_id  | int  |
| income      | int  |

- `account_id` is the **primary key** (contains unique values).
- Each row represents the monthly income for one bank account.

---

### Task
Write a SQL query to calculate the number of bank accounts for each salary category. The salary categories are:

- **"Low Salary"**: All the salaries **strictly less** than `$20,000`.
- **"Average Salary"**: All the salaries in the **inclusive range** `[20,000, 50,000]`.
- **"High Salary"**: All the salaries **strictly greater** than `$50,000`.

The result table **must contain all three categories**, and if there are no accounts in a category, return `0`.

The result can be returned in **any order**.

---

## Example

### **Input**  
**Accounts table:**
| account_id | income |
|------------|--------|
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |

### **Output**
| category       | accounts_count |
|---------------|---------------|
| Low Salary     | 1             |
| Average Salary | 0             |
| High Salary    | 3             |

### **Explanation**
- **Low Salary**: Account `2` has an income of `12747`, which is `< 20000`.
- **Average Salary**: No accounts fall within the range `[20000, 50000]`.
- **High Salary**: Accounts `3`, `6`, and `8` have incomes greater than `50000`.
