# 1378. Replace Employee ID With The Unique Identifier

**Difficulty:** Easy  
**Topics:** SQL, Database Joins  

---

## Problem Description

You are given two tables: `Employees` and `EmployeeUNI`. Write a solution to show the unique ID of each user. If a user does not have a unique ID, replace it with `NULL`. Return the result table in any order.

---

## Table Structure

### Table: Employees
| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key for this table.
- Each row contains the `id` and the `name` of an employee in a company.

### Table: EmployeeUNI
| Column Name | Type    |
|-------------|---------|
| id          | int     |
| unique_id   | int     |

- `(id, unique_id)` is the primary key for this table.
- Each row contains the `id` and the corresponding `unique_id` of an employee in the company.

---

## Example

### Input:

**Employees Table:**
| id  | name      |
|-----|-----------|
| 1   | Alice     |
| 7   | Bob       |
| 11  | Meir      |
| 90  | Winston   |
| 3   | Jonathan  |

**EmployeeUNI Table:**
| id  | unique_id |
|-----|-----------|
| 3   | 1         |
| 11  | 2         |
| 90  | 3         |

### Output:
| unique_id | name      |
|-----------|-----------|
| NULL      | Alice     |
| NULL      | Bob       |
| 2         | Meir      |
| 3         | Winston   |
| 1         | Jonathan  |

### Explanation:
- Alice and Bob do not have a unique ID, so `NULL` is displayed for their `unique_id`.
- Meir's `unique_id` is `2`.
- Winston's `unique_id` is `3`.
- Jonathan's `unique_id` is `1`.

---

## SQL Solution

```sql
SELECT 
    CASE 
        WHEN EmployeeUNI.id = Employees.id THEN EmployeeUNI.unique_id 
        ELSE NULL 
    END AS unique_id,
    Employees.name
FROM 
    Employees
LEFT JOIN 
    EmployeeUNI 
ON 
    EmployeeUNI.id = Employees.id;
