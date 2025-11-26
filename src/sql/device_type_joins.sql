-- Joins customer data with device IDs, payments, and rentals.
-- Customer is the base table, join app_id to identify device type
-- LEFT JOIN payment and rental so customers without payments/rentals
-- are still included
SELECT
    a.android_id,
    a.apple_id,
    c.customer_id,
    p.amount,
    r.rental_date,
    r.return_date
FROM customer AS c
INNER JOIN app_id AS a 
    ON c.customer_id = a.customer_id
LEFT JOIN payment AS p 
    ON c.customer_id = p.customer_id
LEFT JOIN rental AS r 
    ON c.customer_id = r.customer_id;
