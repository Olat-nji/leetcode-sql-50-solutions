# 1148. Article Views I

**Status:** Solved  
**Difficulty:** Easy  
**Topics:** SQL, Database  

---

## Problem Description

### Table: `Views`

| Column Name | Type    |
|-------------|---------|
| article_id  | int     |
| author_id   | int     |
| viewer_id   | int     |
| view_date   | date    |

- There is **no primary key** for this table (it may have duplicate rows).  
- Each row in this table indicates:
  - A viewer (`viewer_id`) viewed an article (`article_id`) written by an author (`author_id`) on a specific date (`view_date`).
- **Note:** If `author_id` equals `viewer_id`, it means the author viewed their own article.

---

### Goal:
Write a query to find all the authors (`author_id`) who viewed **at least one** of their own articles.

- Return the result sorted by `id` (ascending order).

---

### Example

#### Input:  
`Views` table:
| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|------------|
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |

#### Output:  
| id   |
|------|
| 4    |
| 7    |

---

### Explanation:
- Author `4` viewed their own article (`viewer_id` = `author_id` = 4).  
- Author `7` also viewed their own article (`viewer_id` = `author_id` = 7).  

---

### SQL Solution

```sql
SELECT DISTINCT 
    author_id AS id
FROM 
    Views
WHERE 
    author_id = viewer_id
ORDER BY 
    id ASC;
