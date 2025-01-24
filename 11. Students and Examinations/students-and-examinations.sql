# 1280. Students and Examinations

**Difficulty:** Easy  
**Topics:** SQL, Joins  

---

## Problem Statement

You are given three tables: **Students**, **Subjects**, and **Examinations**.

### Table: Students
| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| student_name  | varchar |

- `student_id` is the primary key (unique values) for this table.
- Each row contains the ID and name of one student in the school.

---

### Table: Subjects
| Column Name   | Type    |
|---------------|---------|
| subject_name  | varchar |

- `subject_name` is the primary key (unique values) for this table.
- Each row contains the name of one subject in the school.

---

### Table: Examinations
| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| subject_name  | varchar |

- This table does not have a primary key. It may contain duplicates.
- Each row indicates that a student with ID `student_id` attended the exam for the subject `subject_name`.

---

### Task
Write a solution to find the number of times each student attended each exam.  
- Return the result table ordered by `student_id` and `subject_name`.  

The result format should match the example below.

---

### Example

#### Input: 
**Students table:**
| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

**Subjects table:**
| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

**Examinations table:**
| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

#### Output:
| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

### Explanation:
1. The result table contains all combinations of students and subjects.
2. For each student and subject pair, the `attended_exams` column shows how many times the student attended the subject exam.
3. Alice attended the Math exam 3 times, the Physics exam 2 times, and the Programming exam 1 time.
4. Bob attended the Math exam 1 time, the Programming exam 1 time, and did not attend the Physics exam.
5. Alex did not attend any exams.
6. John attended the Math exam 1 time, the Physics exam 1 time, and the Programming exam 1 time.
