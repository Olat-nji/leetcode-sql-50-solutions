# 584. Find Customer Referee

**Status**: Solved  
**Difficulty**: Easy  

## Topics  
- SQL  

## Schema

### SQL Schema
Table: `Customer`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |

- `id` is the primary key column for this table.
- Each row of this table indicates the `id` of a customer, their `name`, and the `id` of the customer who referred them.

---

## Problem Statement

Find the names of the customers that are **not referred** by the customer with `id = 2`.

- Return the result table in any order.
- The result format should match the example below.

---

### Example

#### Input

Customer table:

| id | name | referee_id |
|----|------|------------|
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |

#### Output

| name  |
|-------|
| Will  |
| Jane  |
| Bill  |
| Zack  |

#### Explanation
- Customers "Alex" and "Mark" are referred by the customer with `id = 2`. These names are excluded from the result.
- Customers "Will", "Jane", "Bill", and "Zack" are not referred by `id = 2` and are included in the output.
