# Advanced SQL Queries: Joins

This repository contains SQL queries designed to demonstrate the use of different types of joins to retrieve data from multiple tables in an Airbnb database simulation. The queries explore various join types including `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`, showcasing real-world scenarios in which these joins are useful.

## Queries Overview

### 1. **INNER JOIN**: Retrieve all bookings and the respective users who made those bookings
- **Query File**: `joins_queries.sql`
- **Objective**: This query combines the `bookings` table and the `users` table to retrieve all bookings along with the respective user details (user ID and user name). It uses an `INNER JOIN`, ensuring that only records with matching `user_id` in both tables are included in the result.
- The INNER JOIN returns only those bookings that have a corresponding user. If a booking does not have a user or a user does not have a booking, it will not appear in the result.

### 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
- **Query File**: joins_queries.sql
- Objective: This query retrieves all properties and their associated reviews, even for properties that do not have any reviews. It uses a LEFT JOIN, which ensures that all properties are included, and for those without reviews, NULL values will be returned for the review-related fields.

  ### 3. **FULL OUTER JOIN** : Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
- Query File: joins_queries.sql
- Objective: This query retrieves all users and all bookings, ensuring that both users without bookings and bookings without users are included in the result. It uses a FULL OUTER JOIN to return all records from both tables, with NULL values where there is no match.

```sql
SELECT 
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.user_name
FROM 
    bookings b
INNER JOIN 
    users u ON b.user_id = u.user_id;


```sql
SELECT 
    p.property_id,
    p.property_name,
    r.review_id,
    r.review_text
FROM 
    properties p
LEFT JOIN 
    reviews r ON p.property_id = r.property_id;



```sql
SELECT 
    u.user_id,
    u.user_name,
    b.booking_id,
    b.booking_date
FROM 
    users u
FULL OUTER JOIN 
    bookings b ON u.user_id = b.user_id;

