-- -- This view calculates 3 metrics (total spend, average rental duration,
-- -- and average spend per rental) for Apple and Android device users
-- -- It joins the customer data with device IDs, payments, and rentals.
-- CREATE VIEW device_type_metrics AS
-- SELECT 
--     CASE 
--         WHEN a.android_id IS NOT NULL THEN 'Android'
--         WHEN a.apple_id IS NOT NULL THEN 'Apple'
--         ELSE 'Unknown' -- Handles edge case where no device ID is present
--     END AS device_type,
    
--     -- Metric 1: Total Spend per device group
--     SUM(p.amount) AS total_spend,

--     -- Metric 2: Average rental duration in days
--     AVG(DATEDIFF(r.return_date, r.rental_date)) AS avg_rental_duration,

--     -- Metric 3: Average spend per rental
--     SUM(p.amount) / NULLIF(COUNT(r.rental_id), 0) AS avg_spend_per_rental

-- FROM customer AS c
-- INNER JOIN app_id AS a 
--     ON c.customer_id = a.customer_id
-- LEFT JOIN payment AS p 
--     ON c.customer_id = p.customer_id
-- LEFT JOIN rental AS r 
--     ON c.customer_id = r.customer_id

-- GROUP BY device_type;


-- This query combines customer info with their device IDs, payments
-- and rentals
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.android_id,
    a.apple_id,
    p.payment_id,
    p.amount,
    p.payment_date,
    r.rental_id,
    r.rental_date,
    r.return_date
FROM customer AS c
LEFT JOIN app_id AS a 
    ON c.customer_id = a.customer_id
LEFT JOIN payment AS p 
    ON c.customer_id = p.customer_id
LEFT JOIN rental AS r 
    ON c.customer_id = r.customer_id;
