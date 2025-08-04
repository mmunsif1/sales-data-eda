/* 3.Date-BASED EDA */

-- Find the date of first and last order
-- How many months of sales are available
SELECT
MIN(order_date) as first_order,
MAX(order_date) AS last_order,
DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_full_months
FROM orders