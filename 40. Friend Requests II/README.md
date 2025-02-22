# 602. Friend Requests II: Who Has the Most Friends

## Medium

### Problem Statement

Table: **RequestAccepted**

| Column Name  | Type |
|-------------|------|
| requester_id | int  |
| accepter_id  | int  |
| accept_date  | date |

- `(requester_id, accepter_id)` is the **primary key** (a unique combination of columns).
- This table contains the **ID of the user** who sent the friend request, the **ID of the user** who accepted the request, and the **date** when the request was accepted.

---

### Task

Write a solution to **find the person who has the most friends** and the **number of their friends**.

The test cases are generated so that **only one person** has the most friends.

The result should be formatted as follows:

---

### Example 1:

#### **Input:**
**RequestAccepted** table:

| requester_id | accepter_id | accept_date |
|-------------|-------------|-------------|
| 1           | 2           | 2016/06/03  |
| 1           | 3           | 2016/06/08  |
| 2           | 3           | 2016/06/08  |
| 3           | 4           | 2016/06/09  |

#### **Output:**
| id | num |
|----|-----|
| 3  | 3   |

#### **Explanation:**
- Person with `id = 3` is friends with **1, 2, and 4**.
- This means they have **3 friends**, which is more than any other user.

---

### Follow-up:

In a **real-world scenario**, multiple people could have the same **highest number of friends**. Could you modify the solution to return all such people in this case?
