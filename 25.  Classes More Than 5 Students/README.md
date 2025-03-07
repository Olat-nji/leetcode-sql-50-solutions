# 596. Classes More Than 5 Students

**Solved**  
**Easy**  

## Description  
Given a table `Courses`, write a solution to find all the classes that have at least five students.  

Return the result table in any order.  

## Table: Courses  

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- `(student, class)` is the **primary key** (combination of columns with unique values) for this table.  
- Each row of this table indicates the name of a student and the class in which they are enrolled.  

## Example  

### Example 1:  
**Input:**  
Courses table:  

| student | class    |
|---------|---------|
| A       | Math    |
| B       | English |
| C       | Math    |
| D       | Biology |
| E       | Math    |
| F       | Computer |
| G       | Math    |
| H       | Math    |
| I       | Math    |

**Output:**  

| class   |
|---------|
| Math    |

**Explanation:**  
- `Math` has **6 students**, so we include it.  
- `English`, `Biology`, and `Computer` each have **1 student**, so we do not include them.  
