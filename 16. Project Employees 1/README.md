# 1075. Project Employees I

**Difficulty:** Easy

**Topics:** SQL, Database

**Companies:** Various

---

## Problem Statement

You are given two tables: `Project` and `Employee`.

### Table: Project

| Column Name   | Type |
|---------------|------|
| project_id    | int  |
| employee_id   | int  |

- `(project_id, employee_id)` is the primary key of this table.
- `employee_id` is a foreign key to the `Employee` table.
- Each row indicates that the employee with `employee_id` is working on the project with `project_id`.

### Table: Employee

| Column Name      | Type    |
|------------------|---------|
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |

- `employee_id` is the primary key of this table.
- It is guaranteed that `experience_years` is not `NULL`.
- Each row contains information about one employee.

### Task

Write an SQL query that reports the **average experience years** of all the employees for each project, rounded to **2 decimal places**.

Return the result table in any order.

---

## Example

### Input:

**Project Table:**

| project_id | employee_id |
|------------|-------------|
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

**Employee Table:**

| employee_id | name   | experience_years |
|-------------|--------|------------------|
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

### Output:

| project_id | average_years |
|------------|---------------|
| 1          | 2.00          |
| 2          | 2.50          |

