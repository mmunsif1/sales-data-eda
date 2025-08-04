/* 6.RANKING-BASED EDA */

-- Top 5 products by revenue
SELECT TOP 5
    product_name,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS total_revenue
FROM orders
GROUP BY product_name
ORDER BY total_revenue DESC;

-- Bottom 5 products by total sales
SELECT TOP 5
    product_name,
    ROUND(SUM(sales), 0) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales ASC;

-- Top 5 customers by total revenue
SELECT TOP 5
    customer_id,
    customer_name,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS total_revenue
FROM orders
GROUP BY customer_id, customer_name
ORDER BY total_revenue DESC;

-- Top 5 cities by total orders
SELECT TOP 5
    city,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY city
ORDER BY total_orders DESC;

-- Best product category by revenue
SELECT TOP 1
    product_category,
    ROUND(SUM(unit_price * quantity_ordered_new), 0) AS revenue
FROM orders
GROUP BY product_category
ORDER BY revenue DESC;
