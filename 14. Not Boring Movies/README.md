# 620. Not Boring Movies
**Solved**  
**Difficulty:** Easy  
**Topics:** SQL  

---

### **Problem Description**

Table: `Cinema`

| Column Name    | Type     |
|----------------|----------|
| id             | int      |
| movie          | varchar  |
| description    | varchar  |
| rating         | float    |

- `id` is the primary key (a column with unique values) for this table.  
- Each row contains information about the name of a movie, its genre, and its rating.  
- `rating` is a float with two decimal places in the range `[0, 10]`.  

---

### **Task**  
Write a solution to report the movies with:  
1. An odd-numbered `id`.  
2. A `description` that is not "boring".  

The result table should be **ordered by `rating` in descending order**.

---

### **Input Example**

**Cinema table:**

| id  | movie      | description | rating |
|-----|------------|-------------|--------|
| 1   | War        | great 3D    | 8.9    |
| 2   | Science    | fiction     | 8.5    |
| 3   | irish      | boring      | 6.2    |
| 4   | Ice song   | Fantacy     | 8.6    |
| 5   | House card | Interesting | 9.1    |

---

### **Output Example**

| id  | movie      | description | rating |
|-----|------------|-------------|--------|
| 5   | House card | Interesting | 9.1    |
| 1   | War        | great 3D    | 8.9    |

---

### **Explanation**  

1. Movies with **odd-numbered IDs** are:
   - ID = 1 → "War"  
   - ID = 3 → "irish"  
   - ID = 5 → "House card"

2. The movie with `ID = 3` has the `description = "boring"`, so it is excluded.

3. The remaining movies are:
   - ID = 1 → "War" → `rating = 8.9`
   - ID = 5 → "House card" → `rating = 9.1`

4. Results are ordered by `rating` in **descending order**.

---

