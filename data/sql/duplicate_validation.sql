#duplicate validation

SELECT
customer_id,
COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT
order_id,
COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT
product_id,
COUNT(*)
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

SELECT
order_item_id,
COUNT(*)
FROM order_items
GROUP BY order_item_id
HAVING COUNT(*) > 1;

SELECT
session_id,
COUNT(*)
FROM web_sessions
GROUP BY session_id
HAVING COUNT(*) > 1;