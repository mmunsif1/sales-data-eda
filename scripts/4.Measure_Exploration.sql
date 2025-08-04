/* 4.Measure-BASED EDA */

/* Sales & Order Volume */

-- Find the Total Sales
SELECT ROUND(SUM(sales), 0) AS total_sales
FROM orders;

-- Find how many Items are Sold
SELECT SUM(quantity_ordered_new) AS total_quantity
FROM orders;

-- Find the Total Number of Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Find the Total Number of Products
SELECT COUNT(DISTINCT product_name) AS total_products
FROM orders;

-- Find the Total Number of Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM orders;

/* Pricing & Revenue Insights */

-- Find the Average Selling Price
SELECT ROUND(AVG(unit_price), 0) AS average_price
FROM orders;

-- Average Revenue per Order
SELECT ROUND(SUM(sales) * 1.0 / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order
FROM orders;

-- Average Profit per Customer
SELECT ROUND(SUM(profit) * 1.0 / COUNT(DISTINCT customer_id), 2) AS avg_profit_per_customer
FROM orders;

/* Profitability Metrics */

-- Find the Total Profit
SELECT ROUND(SUM(profit), 0) AS total_profit
FROM orders;

-- Calculate Overall Profit Margin (%)
SELECT ROUND(SUM(profit) * 100.0 / NULLIF(SUM(sales), 0), 2) AS profit_margin_percent
FROM orders;

/* Discounts & Cost Components */

-- Find the Average Discount
SELECT ROUND(AVG(discount) * 100, 2) AS average_discount_percent
FROM orders;

-- Find Total and Average Shipping Cost
SELECT 
    ROUND(SUM(shipping_cost), 0) AS total_shipping_cost,
    ROUND(AVG(shipping_cost), 2) AS average_shipping_cost
FROM orders;

-- Find the Average Product Base Margin
SELECT ROUND(AVG(product_base_margin), 2) * 100  AS average_base_margin_percentage
FROM orders;


-- Generate a report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name, ROUND(SUM(sales), 0) AS measure_value FROM orders
UNION ALL
SELECT 'Total Quantity', SUM(quantity_ordered_new) FROM orders
UNION ALL
SELECT 'Average Price', ROUND(AVG(unit_price), 0) FROM orders
UNION ALL
SELECT 'Total Orders', COUNT(DISTINCT order_id) FROM orders
UNION ALL
SELECT 'Total Products', COUNT(DISTINCT product_name) FROM orders
UNION ALL
SELECT 'Total Customers', COUNT(DISTINCT customer_id) FROM orders
UNION ALL
SELECT 'Total Profit', ROUND(SUM(profit), 0) FROM orders
UNION ALL
SELECT 'Average Discount (%)', ROUND(AVG(discount) * 100, 2) FROM orders
UNION ALL
SELECT 'Total Shipping Cost', ROUND(SUM(shipping_cost), 0) FROM orders
UNION ALL
SELECT 'Average Shipping Cost', ROUND(AVG(shipping_cost), 2) FROM orders
UNION ALL
SELECT 'Average Product Base Margin (%)', ROUND(AVG(product_base_margin) * 100, 2) FROM orders
UNION ALL
SELECT 'Profit Margin (%)', ROUND(SUM(profit) * 100.0 / NULLIF(SUM(sales), 0), 2) FROM orders
UNION ALL
SELECT 'Avg Revenue per Order', ROUND(SUM(sales) * 1.0 / COUNT(DISTINCT order_id), 2) FROM orders
UNION ALL
SELECT 'Avg Profit per Customer', ROUND(SUM(profit) * 1.0 / COUNT(DISTINCT customer_id), 2) FROM orders;