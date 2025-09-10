-- 1. Total Sales Revenue
SELECT ROUND(SUM(price * quantity),2) AS total_revenue
FROM order_items;

-- 2. Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       ROUND(SUM(price * quantity),2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;

-- 3. Top 10 Best-Selling Products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 10;

-- 4. Average Order Value (AOV)
SELECT ROUND(SUM(price * quantity) / COUNT(DISTINCT order_id),2) AS avg_order_value
FROM order_items;

-- 5. Top 5 Customers by Spend
SELECT c.customer_name, ROUND(SUM(oi.price * oi.quantity),2) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 6. Payment Method Usage
SELECT payment_type, COUNT(*) AS usage_count, 
       ROUND(SUM(payment_value),2) AS total_value
FROM payments
GROUP BY payment_type
ORDER BY total_value DESC;
