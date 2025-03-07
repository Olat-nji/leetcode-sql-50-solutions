# 1141. User Activity for the Past 30 Days I

**Solved**  
**Easy**  
**Topics**  
**Companies**  

## Table: Activity  

| Column Name   | Type    |  
|--------------|--------|  
| user_id      | int    |  
| session_id   | int    |  
| activity_date | date   |  
| activity_type | enum   |  

- This table may have duplicate rows.  
- The `activity_type` column is an ENUM (category) of type (`'open_session'`, `'end_session'`, `'scroll_down'`, `'send_message'`).  
- The table shows the user activities for a social media website.  
- Each session belongs to exactly one user.  

## Problem Statement  
Write a solution to find the **daily active user count** for a period of **30 days ending 2019-07-27** inclusively.  
A user was active on a given day if they made at least **one activity** on that day.  

Return the result table in any order.  

## Example  

### Input:  
#### Activity table:  

| user_id | session_id | activity_date | activity_type |  
|---------|------------|---------------|---------------|  
| 1       | 1          | 2019-07-20    | open_session  |  
| 1       | 1          | 2019-07-20    | scroll_down   |  
| 1       | 1          | 2019-07-20    | end_session   |  
| 2       | 4          | 2019-07-20    | open_session  |  
| 2       | 4          | 2019-07-21    | send_message  |  
| 2       | 4          | 2019-07-21    | end_session   |  
| 3       | 2          | 2019-07-21    | open_session  |  
| 3       | 2          | 2019-07-21    | send_message  |  
| 3       | 2          | 2019-07-21    | end_session   |  
| 4       | 3          | 2019-06-25    | open_session  |  
| 4       | 3          | 2019-06-25    | end_session   |  

### Output:  

| day        | active_users |  
|------------|--------------|  
| 2019-07-20 | 2            |  
| 2019-07-21 | 2            |  

### Explanation:  
- Only include days within the **30-day** range ending **2019-07-27**.  
- A user is counted only once per day, regardless of multiple activities.  
- Days with **zero active users** are not included in the result.  
