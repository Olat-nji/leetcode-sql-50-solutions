# 1251. Average Selling Price

### Table: Prices

| Column Name | Type   |
|-------------|--------|
| product_id  | int    |
| start_date  | date   |
| end_date    | date   |
| price       | int    |

- **(product_id, start_date, end_date)** is the primary key (combination of columns with unique values) for this table.
- Each row in this table indicates the price of the product_id within the period from `start_date` to `end_date`.
- For each `product_id`, there will be no overlapping periods, ensuring no intersecting timeframes for the same product.

---

### Table: UnitsSold

| Column Name   | Type   |
|---------------|--------|
| product_id    | int    |
| purchase_date | date   |
| units         | int    |

- This table may contain duplicate rows.
- Each row indicates the date, units, and product_id of the product sold.

---

### Problem Description
Write a solution to find the **average selling price** for each product. The `average_price` should be rounded to **2 decimal places**.  
If a product does not have any sold units, its average selling price is assumed to be `0`.  

The result table can be returned in any order.

---

### Example

**Input:**

#### Prices table:
| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

#### UnitsSold table:
| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

---

**Output:**

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

---

### Explanation

**Formula:**  
`Average Selling Price = Total Price of Product / Number of Products Sold`

- **Product 1:**  
  - Total price = (100 units * 5) + (15 units * 20) = 500 + 300 = **800**  
  - Total units sold = 100 + 15 = **115**  
  - Average price = 800 / 115 = **6.96**

- **Product 2:**  
  - Total price = (200 units * 15) + (30 units * 30) = 3000 + 900 = **3900**  
  - Total units sold = 200 + 30 = **230**  
  - Average price = 3900 / 230 = **16.96**
