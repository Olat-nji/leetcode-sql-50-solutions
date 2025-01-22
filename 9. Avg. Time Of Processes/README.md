# 1661. Average Time of Process per Machine

**Status:** Solved  
**Difficulty:** Easy  
**Topics:** SQL, Pandas  
**Companies:** N/A  

---

## Table: Activity

| Column Name    | Type    |
|----------------|---------|
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |

- **Primary Key:** (machine_id, process_id, activity_type)  
- **Description:**
  - `machine_id`: ID of a machine.  
  - `process_id`: ID of a process running on the machine with `machine_id`.  
  - `activity_type`: ENUM of type `('start', 'end')`.  
  - `timestamp`: A float representing the time in seconds.  
  - `'start'`: Machine starts the process at the given `timestamp`.  
  - `'end'`: Machine ends the process at the given `timestamp`.  
- **Constraints:**
  - `'start'` timestamp is always before `'end'` timestamp for every `(machine_id, process_id)` pair.
  - Each `(machine_id, process_id)` pair has both `'start'` and `'end'` timestamps.

---

## Problem

A factory website has several machines, each running the same number of processes. Write a solution to find the **average time each machine takes to complete a process**.

- The time to complete a process is:  
  `end_timestamp - start_timestamp`.  
- The average time for each machine is:  
  `(Total time to complete all processes) / (Number of processes)`.

### Requirements:
- Return the result table with the following columns:
  - `machine_id`
  - `processing_time` (rounded to 3 decimal places)
- Result can be in any order.

---

## Example

### Input:
**Activity Table:**

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |

### Output:
| machine_id | processing_time |
|------------|-----------------|
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |

---

### Explanation:
- **Machine 0:**
  - Process 0: `1.520 - 0.712 = 0.808`
  - Process 1: `4.120 - 3.140 = 0.980`
  - Average: `(0.808 + 0.980) / 2 = 0.894`
- **Machine 1:**
  - Process 0: `1.550 - 0.550 = 1.000`
  - Process 1: `1.420 - 0.430 = 0.990`
  - Average: `(1.000 + 0.990) / 2 = 0.995`
- **Machine 2:**
  - Process 0: `4.512 - 4.100 = 0.412`
  - Process 1: `5.000 - 2.500 = 2.500`
  - Average: `(0.412 + 2.500) / 2 = 1.456`
