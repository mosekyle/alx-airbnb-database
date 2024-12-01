-- 1. Query to find all properties where the average rating is greater than 4.0 using a subquery

SELECT 
    p.property_id,
    p.property_name
FROM 
    properties p
WHERE 
    (SELECT AVG(r.rating) FROM reviews r WHERE r.property_id = p.property_id) > 4.0;

-- Explanation:
-- The subquery calculates the average rating for each property from the `reviews` table.
-- The outer query retrieves the properties where the calculated average rating is greater than 4.0.

-- 2. Query using a correlated subquery to find users who have made more than 3 bookings

SELECT 
    u.user_id,
    u.user_name
FROM 
    users u
WHERE 
    (SELECT COUNT(b.booking_id) FROM bookings b WHERE b.user_id = u.user_id) > 3;

-- Explanation:
-- The correlated subquery counts the number of bookings for each user by matching `user_id` from the outer query's `users` table to the `bookings` table.
-- The outer query retrieves users who have made more than 3 bookings.

