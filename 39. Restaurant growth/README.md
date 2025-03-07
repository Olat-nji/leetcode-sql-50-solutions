# 1321. Restaurant Growth

**Medium**  
**Topics**: SQL, Moving Average, Window Functions  

---

## Problem Statement  

You are the restaurant owner and you want to analyze a possible expansion.  
There will be **at least one customer every day**.  

Compute the **moving average** of how much the customer paid in a **seven-day window**  
(i.e., current day + 6 days before).  

- `average_amount` should be **rounded to two decimal places**.  
- Return the result table **ordered by `visited_on` in ascending order**.  

---

## Schema  

### **Table: Customer**  

| Column Name  | Type    | Constraints |
|-------------|---------|-------------|
| `customer_id` | `int`  | Primary Key (with `visited_on`) |
| `name`       | `varchar` | |
| `visited_on` | `date`  | Primary Key |
| `amount`     | `int`  | Total paid by the customer |

- `visited_on` represents the **date** when the customer visited the restaurant.  
- `amount` is the **total money paid** by a customer on that visit.  

---

## Example  

### **Input:**  

#### **Customer Table:**  

| customer_id | name    | visited_on | amount |
|------------|---------|------------|--------|
| 1          | Jhon    | 2019-01-01 | 100    |
| 2          | Daniel  | 2019-01-02 | 110    |
| 3          | Jade    | 2019-01-03 | 120    |
| 4          | Khaled  | 2019-01-04 | 130    |
| 5          | Winston | 2019-01-05 | 110    |
| 6          | Elvis   | 2019-01-06 | 140    |
| 7          | Anna    | 2019-01-07 | 150    |
| 8          | Maria   | 2019-01-08 | 80     |
| 9          | Jaze    | 2019-01-09 | 110    |
| 1          | Jhon    | 2019-01-10 | 130    |
| 3          | Jade    | 2019-01-10 | 150    |

---

### **Output:**  

| visited_on  | amount | average_amount |
|------------|--------|---------------|
| 2019-01-07 | 860    | 122.86        |
| 2019-01-08 | 840    | 120           |
| 2019-01-09 | 840    | 120           |
| 2019-01-10 | 1000   | 142.86        |

---

## Explanation  

### **Moving Averages Calculation:**  

- **1st Moving Average (2019-01-01 → 2019-01-07)**  
  \[
  (100 + 110 + 120 + 130 + 110 + 140 + 150) / 7 = 122.86
  \]
  
- **2nd Moving Average (2019-01-02 → 2019-01-08)**  
  \[
  (110 + 120 + 130 + 110 + 140 + 150 + 80) / 7 = 120
  \]
  
- **3rd Moving Average (2019-01-03 → 2019-01-09)**  
  \[
  (120 + 130 + 110 + 140 + 150 + 80 + 110) / 7 = 120
  \]

- **4th Moving Average (2019-01-04 → 2019-01-10)**  
  \[
  (130 + 110 + 140 + 150 + 80 + 110 + 130 + 150) / 7 = 142.86
  \]

---

## Constraints  

- **`1 <= customer_id <= 1000`**  
- **Each `visited_on` has at least one transaction**  
- **`1 <= amount <= 10000`**  
- The moving average considers a **seven-day window**, meaning we only start computing results **from the 7th day onward**.

---

### **Tags**  
`SQL` `Window Functions` `Moving Average` `Data Analysis`  
