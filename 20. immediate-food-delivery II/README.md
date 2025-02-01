```markdown
# 1174. Immediate Food Delivery II

**Solved**  
**Medium**  
**Topics**  
**Companies**  

## SQL Schema  
### Table: Delivery  

```
+-----------------------------+---------+
| Column Name                 | Type    |
+-----------------------------+---------+
| delivery_id                 | int     |
| customer_id                 | int     |
| order_date                  | date    |
| customer_pref_delivery_date | date    |
+-----------------------------+---------+
```
- `delivery_id` is the column of unique values in this table.
- The table holds information about food delivery to customers who make orders on a certain date and specify a preferred delivery date (either the same order date or a later date).

## Definition  
- If the customer's preferred delivery date is **the same as** the order date, then the order is called **immediate**.
- Otherwise, it is called **scheduled**.
- The **first order** of a customer is the order with the earliest `order_date` for that customer.
- It is guaranteed that a customer has **precisely one first order**.

## Task  
Write a solution to find the **percentage of immediate orders** in the first orders of all customers, rounded to **2 decimal places**.

## Example  

### **Input:**  
#### Delivery table:
```
+-------------+-------------+------------+-----------------------------+
| delivery_id | customer_id | order_date | customer_pref_delivery_date |
+-------------+-------------+------------+-----------------------------+
| 1           | 1           | 2019-08-01 | 2019-08-02                  |
| 2           | 2           | 2019-08-02 | 2019-08-02                  |
| 3           | 1           | 2019-08-11 | 2019-08-12                  |
| 4           | 3           | 2019-08-24 | 2019-08-24                  |
| 5           | 3           | 2019-08-21 | 2019-08-22                  |
| 6           | 2           | 2019-08-11 | 2019-08-13                  |
| 7           | 4           | 2019-08-09 | 2019-08-09                  |
+-------------+-------------+------------+-----------------------------+
```

### **Output:**  
```
+----------------------+
| immediate_percentage |
+----------------------+
| 50.00                |
+----------------------+
```

### **Explanation:**  
- Customer `1`'s first order (`delivery_id = 1`) is **scheduled**.
- Customer `2`'s first order (`delivery_id = 2`) is **immediate**.
- Customer `3`'s first order (`delivery_id = 5`) is **scheduled**.
- Customer `4`'s first order (`delivery_id = 7`) is **immediate**.

**Hence,** `2 out of 4` customers have immediate first orders, resulting in `50.00%`.
```