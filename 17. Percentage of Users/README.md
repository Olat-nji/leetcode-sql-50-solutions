# 1633. Percentage of Users Attended a Contest

## Difficulty: Easy  
**Topics:** SQL, Pandas  

---

## Schema  

### Table: `Users`  

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| user_name   | varchar |

- `user_id` is the **primary key** (column with unique values) for this table.  
- Each row of this table contains the **name** and the **id** of a user.  

---

### Table: `Register`  

| Column Name | Type |
|-------------|-----|
| contest_id  | int |
| user_id     | int |

- `(contest_id, user_id)` is the **primary key** (combination of columns with unique values) for this table.  
- Each row of this table contains the **id of a user** and the **contest they registered into**.  

---

## Task  
Write a solution to find the **percentage** of users registered in each contest **rounded to two decimals**.  

- Return the result table ordered by `percentage` in **descending order**.  
- In case of a tie, order by `contest_id` in **ascending order**.  

---

## Example  

### **Input:**  

#### `Users` table:  

| user_id | user_name |
|---------|-----------|
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

#### `Register` table:  

| contest_id | user_id |
|------------|---------|
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

---

### **Output:**  

| contest_id | percentage |
|------------|------------|
| 208        | 100.0      |
| 209        | 100.0      |
| 210        | 100.0      |
| 215        | 66.67      |
| 207        | 33.33      |

---

### **Explanation:**  
- **Contests 208, 209, and 210** have **all users registered**, so the percentage is **100%**.  
  - These are sorted in the **ascending order** of `contest_id`.  
- **Contest 215** has **Alice and Alex** registered.  
  - The percentage is **(2/3) * 100 = 66.67%**.  
- **Contest 207** has **Bob** registered.  
  - The percentage is **(1/3) * 100 = 33.33%**.  
