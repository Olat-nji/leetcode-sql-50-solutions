# 1581. Customer Who Visited but Did Not Make Any Transactions

### Difficulty
Easy

---

### Topics
SQL, Databases

---

### Schema

#### Table: Visits

| Column Name | Type |
|-------------|------|
| visit_id    | int  |
| customer_id | int  |

- **`visit_id`** is the column with unique values for this table.
- This table contains information about the customers who visited the mall.

---

#### Table: Transactions

| Column Name    | Type |
|----------------|------|
| transaction_id | int  |
| visit_id       | int  |
| amount         | int  |

- **`transaction_id`** is the column with unique values for this table.
- This table contains information about the transactions made during the `visit_id`.

---

### Problem Statement

Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.

---

### Example

#### Input: 

**Visits**

| visit_id | customer_id |
|----------|-------------|
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |

**Transactions**

| transaction_id | visit_id | amount |
|----------------|----------|--------|
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |

---

#### Output:

| customer_id | count_no_trans |
|-------------|----------------|
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

---

### Explanation

- **Customer 23**: Visited once and made one transaction (visit ID = 12).
- **Customer 9**: Visited once and made one transaction (visit ID = 13).
- **Customer 30**: Visited once without making any transactions.
- **Customer 54**: Visited three times. During two visits, they made no transactions. During one visit, they made three transactions.
- **Customer 96**: Visited once without making any transactions.

From the above, the customers who made visits without transactions are:
- Customer 30: 1 time
- Customer 96: 1 time
- Customer 54: 2 times
