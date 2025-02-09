# 1045. Customers Who Bought All Products

**Medium**

## Problem Statement

Given two tables, `Customer` and `Product`, write a SQL query to find all `customer_id`s from the `Customer` table who have bought **all** the products listed in the `Product` table.

### Table: Customer

| Column Name  | Type |
|-------------|------|
| customer_id | int  |
| product_key | int  |

- This table may contain duplicate rows.
- `customer_id` is **not NULL**.
- `product_key` is a **foreign key** referencing the `Product` table.

---

### Table: Product

| Column Name  | Type |
|-------------|------|
| product_key | int  |

- `product_key` is the **primary key** (contains unique values).

---

## Example 1

### **Input:**

**Customer table:**

| customer_id | product_key |
|------------|------------|
| 1          | 5          |
| 2          | 6          |
| 3          | 5          |
| 3          | 6          |
| 1          | 6          |

**Product table:**

| product_key |
|------------|
| 5          |
| 6          |

---

### **Output:**

| customer_id |
|------------|
| 1          |
| 3          |

---

### **Explanation:**

- The products available are `{5, 6}`.
- **Customer 1** bought `{5, 6}` → ✅
- **Customer 2** bought `{6}` (not all products) → ❌
- **Customer 3** bought `{5, 6}` → ✅

Thus, the customers who bought **all** the products are **customer IDs 1 and 3**.
