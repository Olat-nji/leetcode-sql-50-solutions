# 1527. Patients With a Condition

## Problem Statement

You are given a table `Patients` with the following structure:

### Table: `Patients`
| Column Name  | Type    |
|-------------|--------|
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

- `patient_id` is the **primary key** (unique column) for this table.
- `conditions` contains **0 or more condition codes** separated by spaces.
- This table stores **patient information** in a hospital.

### Task:
Write an SQL query to find the `patient_id`, `patient_name`, and `conditions` of the patients who have **Type I Diabetes**.  
Type I Diabetes always starts with the **`DIAB1`** prefix.

Return the result table in **any order**.

---

## Example

### **Input:**
**Patients Table:**
| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

### **Output:**
| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

### **Explanation:**
- Bob and George both have a **condition that starts with `DIAB1`**.
- Patient `Alain` has `DIAB201`, which does **not** match `DIAB1`, so he is **not included** in the result.
