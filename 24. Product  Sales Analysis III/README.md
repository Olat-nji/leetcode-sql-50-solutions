# 1070. Product Sales Analysis III

**Medium**

## Problem Statement

### **Table: Sales**
| Column Name | Type  |
|-------------|-------|
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |

- `(sale_id, year)` is the **primary key** (combination of columns with unique values) of this table.
- `product_id` is a **foreign key** that references the `Product` table.
- Each row represents a sale of a product (`product_id`) in a specific `year`.
- The `price` column represents the **price per unit**.

---

### **Table: Product**
| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |

- `product_id` is the **primary key** of this table.
- Each row represents a product with its `product_name`.

---

## **Task**
Write an SQL query to select the `product_id`, the first year (`first_year`) the product was sold, the `quantity` sold, and the `price` for that year.

The result should be returned **in any order**.

---

## **Example**

### **Input:**

#### **Sales Table**
| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

#### **Product Table**
| product_id | product_name |
|------------|--------------|
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |

---

### **Output:**
| product_id | first_year | quantity | price |
|------------|------------|----------|-------|
| 100        | 2008       | 10       | 5000  |
| 200        | 2011       | 15       | 9000  |
