```markdown
## 610. Triangle Judgement

**Easy**

### Problem Statement
Given a table **Triangle**, report for every three line segments whether they can form a triangle.

---

### Table Schema: `Triangle`

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

- `(x, y, z)` is the **primary key** for this table.
- Each row contains the lengths of three line segments.

---

### Task
Return a result table that determines whether the given three line segments form a **triangle** based on the **Triangle Inequality Theorem**, which states that three sides `x, y, z` can form a triangle if:  
`x + y > z` AND `x + z > y` AND `y + z > x`

The result should include an additional column **triangle**, with values:
- `"Yes"` if the three sides form a triangle.
- `"No"` otherwise.

Return the result table in any order.

---

### Example 1:

#### **Input:**
**Triangle table:**

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

#### **Output:**
| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

---
```