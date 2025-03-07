# 1341. Movie Rating  

**Solved | Medium**  

## Tables  

### **Movies**  
| Column Name | Type    |  
|------------|---------|  
| movie_id   | int     |  
| title      | varchar |  

- `movie_id` is the primary key (column with unique values) for this table.  
- `title` is the name of the movie.  

### **Users**  
| Column Name | Type    |  
|------------|---------|  
| user_id    | int     |  
| name       | varchar |  

- `user_id` is the primary key (column with unique values) for this table.  
- The column `name` has unique values.  

### **MovieRating**  
| Column Name | Type |  
|------------|---------|  
| movie_id   | int     |  
| user_id    | int     |  
| rating     | int     |  
| created_at | date    |  

- `(movie_id, user_id)` is the primary key (column with unique values) for this table.  
- This table contains the rating of a movie by a user in their review.  
- `created_at` is the user's review date.  

## **Problem Statement**  

Write a solution to:  

1. Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.  
2. Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.  

## **Example 1**  

**Input:**  

### Movies Table  
| movie_id | title    |  
|----------|---------|  
| 1        | Avengers |  
| 2        | Frozen 2 |  
| 3        | Joker    |  

### Users Table  
| user_id | name   |  
|---------|--------|  
| 1       | Daniel |  
| 2       | Monica |  
| 3       | Maria  |  
| 4       | James  |  

### MovieRating Table  
| movie_id | user_id | rating | created_at |  
|----------|---------|--------|------------|  
| 1        | 1       | 3      | 2020-01-12 |  
| 1        | 2       | 4      | 2020-02-11 |  
| 1        | 3       | 2      | 2020-02-12 |  
| 1        | 4       | 1      | 2020-01-01 |  
| 2        | 1       | 5      | 2020-02-17 |  
| 2        | 2       | 2      | 2020-02-01 |  
| 2        | 3       | 2      | 2020-03-01 |  
| 3        | 1       | 3      | 2020-02-22 |  
| 3        | 2       | 4      | 2020-02-25 |  

**Output:**  

| results  |  
|----------|  
| Daniel   |  
| Frozen 2 |  

**Explanation:**  
- Daniel and Monica have rated 3 movies (`Avengers`, `Frozen 2`, and `Joker`), but Daniel is lexicographically smaller.  
- `Frozen 2` and `Joker` have a rating average of 3.5 in February 2020, but `Frozen 2` is lexicographically smaller.  
```