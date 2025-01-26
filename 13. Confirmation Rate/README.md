# 1934. Confirmation Rate

**Difficulty:** Medium  
**Topics:** SQL  

---

## Problem Statement

You are given two tables: `Signups` and `Confirmations`.  

- The `Signups` table tracks users who have signed up.
- The `Confirmations` table tracks the confirmation messages requested by users and their outcomes (`confirmed` or `timeout`).

The **confirmation rate** of a user is calculated as:  
**`confirmation_rate = (number of 'confirmed' messages) / (total number of requested confirmation messages)`**  

- If a user has not requested any confirmation messages, their confirmation rate is `0`.
- Round the confirmation rate to **two decimal places**.

---

### Tables

#### Table: Signups

| Column Name | Type     |
|-------------|----------|
| user_id     | int      |
| time_stamp  | datetime |

- `user_id` is the primary key for this table.
- Each row contains the signup time for the user with ID `user_id`.

#### Table: Confirmations

| Column Name | Type     |
|-------------|----------|
| user_id     | int      |
| time_stamp  | datetime |
| action      | ENUM     |

- `(user_id, time_stamp)` is the primary key for this table.
- `user_id` is a foreign key to the `Signups` table.
- `action` is an `ENUM` with values (`'confirmed'`, `'timeout'`).
- Each row indicates that the user with ID `user_id` requested a confirmation message at `time_stamp` with the specified outcome.

---

### Example

#### Input

**Signups table:**

| user_id | time_stamp          |
|---------|---------------------|
| 3       | 2020-03-21 10:16:13 |
| 7       | 2020-01-04 13:57:59 |
| 2       | 2020-07-29 23:09:44 |
| 6       | 2020-12-09 10:39:37 |

**Confirmations table:**

| user_id | time_stamp          | action    |
|---------|---------------------|-----------|
| 3       | 2021-01-06 03:30:46 | timeout   |
| 3       | 2021-07-14 14:00:00 | timeout   |
| 7       | 2021-06-12 11:57:29 | confirmed |
| 7       | 2021-06-13 12:58:28 | confirmed |
| 7       | 2021-06-14 13:59:27 | confirmed |
| 2       | 2021-01-22 00:00:00 | confirmed |
| 2       | 2021-02-28 23:59:59 | timeout   |

#### Output

| user_id | confirmation_rate |
|---------|-------------------|
| 6       | 0.00              |
| 3       | 0.00              |
| 7       | 1.00              |
| 2       | 0.50              |

---

### Explanation

1. **User 6:**  
   - No confirmation messages were requested.  
   - `confirmation_rate = 0.00`.

2. **User 3:**  
   - 2 requests were made, and both timed out.  
   - `confirmation_rate = 0 / 2 = 0.00`.

3. **User 7:**  
   - 3 requests were made, and all were confirmed.  
   - `confirmation_rate = 3 / 3 = 1.00`.

4. **User 2:**  
   - 2 requests were made, 1 was confirmed and 1 timed out.  
   - `confirmation_rate = 1 / 2 = 0.50`.

---

### Constraints

- There will be at least one user in the `Signups` table.
- Each `user_id` in the `Confirmations` table exists in the `Signups` table.

---

### Notes
- The result can be returned in any order.
- Use aggregation functions like `COUNT` or `SUM` to calculate the required metrics.
