# 1731. The Number of Employees Which Report to Each Employee

**Solved**  
**Easy**  
**Topics:** SQL, Aggregation, Joins  
**Companies:** [List of companies that ask this question]  

---

## **Problem Statement**
You are given an `Employees` table with the following columns:

### **Table: Employees**
| Column Name  | Type     |
|-------------|---------|
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |
| age         | int     |

- `employee_id` is the **primary key** (unique values).
- This table contains information about employees and the **id of their manager** (`reports_to`).
- Some employees **do not report to anyone** (`reports_to` is NULL).

### **Definition of a Manager**
For this problem, a **manager** is an employee who has **at least one other employee** reporting directly to them.

### **Task**
Write a **SQL query** to **return the IDs and names of all managers**, the **number of employees** who report directly to them (`reports_count`), and the **average age of these employees** (`average_age`, rounded to the nearest integer).

The result should be **ordered by `employee_id`**.

---

## **Examples**

### **Example 1**
#### **Input**: Employees Table
| employee_id | name    | reports_to | age |
|-------------|--------|------------|-----|
| 9           | Hercy  | NULL       | 43  |
| 6           | Alice  | 9          | 41  |
| 4           | Bob    | 9          | 36  |
| 2           | Winston| NULL       | 37  |

#### **Output**
| employee_id | name  | reports_count | average_age |
|-------------|------|---------------|-------------|
| 9           | Hercy | 2             | 39          |

#### **Explanation**
- **Hercy (ID 9)** has **2 direct reports**: Alice (41 years) and Bob (36 years).
- The **average age** of his reports is **(41 + 36) / 2 = 38.5**, which rounds to **39**.

---

### **Example 2**
#### **Input**: Employees Table
| employee_id | name    | reports_to | age |
|-------------|--------|------------|-----|
| 1           | Michael| NULL       | 45  |
| 2           | Alice  | 1          | 38  |
| 3           | Bob    | 1          | 42  |
| 4           | Charlie| 2          | 34  |
| 5           | David  | 2          | 40  |
| 6           | Eve    | 3          | 37  |
| 7           | Frank  | NULL       | 50  |
| 8           | Grace  | NULL       | 48  |

#### **Output**
| employee_id | name    | reports_count | average_age |
|-------------|--------|---------------|-------------|
| 1           | Michael| 2             | 40          |
| 2           | Alice  | 2             | 37          |
| 3           | Bob    | 1             | 37          |

#### **Explanation**
- **Michael (ID 1)** has **Alice (38) and Bob (42)** reporting to him.  
  - Their average age: **(38 + 42) / 2 = 40**
- **Alice (ID 2)** has **Charlie (34) and David (40)** reporting to her.  
  - Their average age: **(34 + 40) / 2 = 37**
- **Bob (ID 3)** has **Eve (37)** reporting to him.  
  - Since there's only one report, the average age is **37**.

---

## **Constraints**
- Each employee has a **unique `employee_id`**.
- The result should be **ordered by `employee_id`**.
