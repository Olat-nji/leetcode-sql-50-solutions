# 585. Investments in 2016

## **Problem Statement**
Given a table `Insurance`, write a SQL query to report the sum of all total investment values in 2016 (`tiv_2016`) for all policyholders who:

1. Have the **same `tiv_2015` value** as one or more other policyholders.
2. Are **not located in the same city** as any other policyholder (i.e., the `(lat, lon)` attribute pairs must be unique).

The result should round `tiv_2016` to **two decimal places**.

---

## **Table: `Insurance`**
| Column Name | Type  | Description |
|-------------|-------|-------------|
| `pid`       | `int`   | Primary key (unique identifier for each policy). |
| `tiv_2015`  | `float` | Total investment value in 2015. |
| `tiv_2016`  | `float` | Total investment value in 2016. |
| `lat`       | `float` | Latitude of the policyholder's city (not NULL). |
| `lon`       | `float` | Longitude of the policyholder's city (not NULL). |

---

## **Example Input**
### **`Insurance` Table**
| pid | tiv_2015 | tiv_2016 | lat | lon |
|-----|----------|----------|-----|-----|
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |

---

## **Example Output**
| tiv_2016 |
|----------|
| 45.00    |

---

## **Explanation**
- **Record 1 (`pid = 1`)**: 
  - `tiv_2015 = 10`, which is **shared** with records 3 and 4.
  - Location `(lat = 10, lon = 10)` is **unique**.
  - ✅ Meets both criteria.

- **Record 2 (`pid = 2`)**:
  - `tiv_2015 = 20`, which is **not shared** with any other record.
  - ❌ Does not meet the first condition.

- **Record 3 (`pid = 3`)**:
  - `tiv_2015 = 10`, which is **shared** with records 1 and 4.
  - Location `(lat = 20, lon = 20)` is **not unique** (same as record 2).
  - ❌ Does not meet the second condition.

- **Record 4 (`pid = 4`)**:
  - `tiv_2015 = 10`, which is **shared** with records 1 and 3.
  - Location `(lat = 40, lon = 40)` is **unique**.
  - ✅ Meets both criteria.

Thus, the final result is:
```
tiv_2016 = 5 (from pid 1) + 40 (from pid 4) = 45.00
```
