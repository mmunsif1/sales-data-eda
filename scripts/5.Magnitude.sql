/* 5.MAGNITUDE-BASED EDA */

-- Total customers by state
SELECT
    state_or_province,
    COUNT(DISTINCT customer_id) AS total_customers
FROM orders
GROUP BY state_or_province
ORDER BY total_customers DESC;

-- Distribution of sold items across states
SELECT
    state_or_province,
    SUM(quantity_ordered_new) AS total_sold_items
FROM orders
GROUP BY state_or_province
ORDER BY total_sold_items DESC;

-- Revenue and quantity by city
SELECT
    city,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS total_revenue,
    SUM(quantity_ordered_new) AS total_quantity
FROM orders
GROUP BY city
ORDER BY total_revenue DESC;

-- Total products by category
SELECT
    product_category,
    COUNT(DISTINCT product_name) AS total_products
FROM orders
GROUP BY product_category
ORDER BY total_products DESC;

-- Total revenue by category
SELECT
    product_category,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS revenue
FROM orders
GROUP BY product_category
ORDER BY revenue DESC;

-- Total revenue per customer
SELECT
    customer_id,
    customer_name,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS revenue
FROM orders
GROUP BY customer_id, customer_name
ORDER BY revenue DESC;

-- Revenue by customer segment
SELECT
    customer_segment,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS total_revenue
FROM orders
GROUP BY customer_segment
ORDER BY total_revenue DESC;

-- Revenue by ship mode
SELECT
    ship_mode,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS total_revenue
FROM orders
GROUP BY ship_mode
ORDER BY total_revenue DESC;
