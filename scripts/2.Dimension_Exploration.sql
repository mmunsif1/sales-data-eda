/* 2.Dimension-BASED EDA */

-- Explore All Countries our customers come from
SELECT DISTINCT country
FROM orders
ORDER BY country;

-- Explore All Regions our customers come from
SELECT DISTINCT region
FROM orders
ORDER BY region;

-- Explore All States or Provinces our customers come from
SELECT DISTINCT state_or_province
FROM orders
ORDER BY state_or_province;

-- Explore All Cities our customers come from
SELECT DISTINCT city
FROM orders
ORDER BY city;

-- Explore All Postal Codes our customers come from
SELECT DISTINCT postal_code
FROM orders
ORDER BY postal_code;


-- Explore All Product Categories (The Major Divisions)
SELECT DISTINCT product_category
FROM orders
ORDER BY product_category;

-- Explore All Product Sub-Categories
SELECT DISTINCT product_sub_category
FROM orders
ORDER BY product_sub_category;

-- Explore All Product Containers
SELECT DISTINCT product_container
FROM orders
ORDER BY product_container;

-- Explore All Order Priorities
SELECT DISTINCT order_priority
FROM orders
ORDER BY order_priority;

-- Explore All Shipping Modes
SELECT DISTINCT ship_mode
FROM orders
ORDER BY ship_mode;

-- Explore All Customer Segments
SELECT DISTINCT customer_segment
FROM orders
ORDER BY customer_segment;