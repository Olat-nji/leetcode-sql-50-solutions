```markdown
# 1757. Recyclable and Low Fat Products
**Status:** Solved  
**Difficulty:** Easy  
**Topics:** SQL, Data Query  
**Companies:** N/A  

## Table: Products

| Column Name | Type    |
|-------------|---------|
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |

- **product_id** is the primary key for this table.  
- **low_fats** is an ENUM of type ('Y', 'N'), where:
  - 'Y' means the product is low fat.
  - 'N' means the product is not low fat.  
- **recyclable** is an ENUM of type ('Y', 'N'), where:
  - 'Y' means the product is recyclable.
  - 'N' means the product is not recyclable.  

## Task

Write a SQL query to find the IDs of products that are both:
1. Low fat (`low_fats = 'Y'`).
2. Recyclable (`recyclable = 'Y'`).

### Result Format
The result table should contain only one column:

| product_id  |
|-------------|
| (id values) |

The rows can be returned in any order.

---

## Example 1

### Input:  
**Products table:**

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

### Output:  

| product_id |
|------------|
| 1          |
| 3          |

### Explanation:  
Only products with IDs `1` and `3` are both low fat (`low_fats = 'Y'`) and recyclable (`recyclable = 'Y'`).

---

## SQL Query Solution

```sql
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
```

---

## Additional Notes
- The query uses a simple `SELECT` statement with a `WHERE` clause to filter rows based on the given conditions.
- The result table contains only the product IDs that meet both criteria.
```