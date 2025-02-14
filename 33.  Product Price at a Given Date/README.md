```markdown
# 1164. Product Price at a Given Date  
**Solved**  
**Medium**  

## **Table: Products**  
| Column Name  | Type  |  
|-------------|-------|  
| product_id  | int   |  
| new_price   | int   |  
| change_date | date  |  

- *(product_id, change_date)* is the **primary key** (ensuring unique records).  
- Each row represents a price change for a product on a specific date.  

---

## **Problem Statement**  
Write an SQL query to find the prices of all products on **2019-08-16**.   
If a product had no price change before this date, assume its initial price was **10**.  

Return the result in **any order**.  

---

## **Example**  

### **Input: Products Table**  
| product_id | new_price | change_date |  
|------------|-----------|-------------|  
| 1          | 20        | 2019-08-14  |  
| 2          | 50        | 2019-08-14  |  
| 1          | 30        | 2019-08-15  |  
| 1          | 35        | 2019-08-16  |  
| 2          | 65        | 2019-08-17  |  
| 3          | 20        | 2019-08-18  |  

### **Output:**  
| product_id | price |  
|------------|-------|  
| 2          | 50    |  
| 1          | 35    |  
| 3          | 10    |  
```