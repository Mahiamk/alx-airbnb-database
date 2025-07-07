-- Aggregate (GROUP BY + COUNT) -- Total bookings by user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id

-- Window function (RANK) -- Rank properties by number of bookings
SELECT property_id, COUNT(*) AS booking_count,
        RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;