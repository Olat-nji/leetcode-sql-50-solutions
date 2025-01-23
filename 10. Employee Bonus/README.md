# 577. Employee Bonus
**Solved**  
**Difficulty**: Easy  
**Topics**: SQL, Pandas  
**Hint**: Use SQL joins to fetch the required data.  

---

## Table Definitions

### Employee Table
| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId` is the column with unique values for this table.
- Each row indicates the name and the ID of an employee, their salary, and the ID of their manager.

### Bonus Table
| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |

- `empId` is the column with unique values for this table.
- `empId` is a foreign key referencing the `empId` in the `Employee` table.
- Each row contains the ID of an employee and their respective bonus.

---

## Task
Write a solution to report the `name` and `bonus` amount of each employee with a bonus less than 1000. If an employee does not have a bonus, the bonus should be `null`.

- Return the result table in any order.

---

## Example

### Input

#### Employee Table:
| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

#### Bonus Table:
| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

### Output
| name | bonus |
|------|-------|
| Brad | null  |
| John | null  |
| Dan  | 500   |

---

## Explanation
- Employees without a bonus in the `Bonus` table (e.g., Brad and John) are included with a `null` value for their bonus.
- Employees with a bonus of less than 1000 (e.g., Dan) are included with their bonus amount.
- Employees with a bonus of 1000 or more (e.g., Thomas) are excluded from the result.
