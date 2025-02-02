## 550. Game Play Analysis IV

### Problem Statement
You are given a table `Activity` that records the activity of players in a game. Each row represents a player's login event on a specific date, using a specific device, and the number of games played.

### Table: Activity
| Column Name  | Type    |
|--------------|---------|
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |

- `(player_id, event_date)` is the **primary key**, meaning each combination of `player_id` and `event_date` is unique.
- This table records the **logins** of players and the number of games they played on different days.

---

### Task
Write a SQL query to find the **fraction of players** who logged in **again on the day after their first login date**, rounded to **two decimal places**.

The result should be in the following format:

| fraction  |
|-----------|
| X.XX      |

---

### Example

#### **Input:**
**Activity table:**
| player_id | device_id | event_date | games_played |
|-----------|-----------|------------|--------------|
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

#### **Output:**
| fraction  |
|-----------|
| 0.33      |

#### **Explanation:**
- Player `1` first logged in on **2016-03-01** and logged in again on **2016-03-02** ✅
- Player `2` first logged in on **2017-06-25**, but did not log in on **2017-06-26** ❌
- Player `3` first logged in on **2016-03-02**, but did not log in on **2016-03-03** ❌
- Out of **3** unique players, only **1** logged in the next day.  
  **Fraction** = `1 / 3 = 0.33`
