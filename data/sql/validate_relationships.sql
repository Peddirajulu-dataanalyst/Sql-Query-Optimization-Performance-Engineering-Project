# validate relationship
# orders without customers

SELECT COUNT(*) AS invalid_orders
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

# order_items without orders
SELECT COUNT(*) AS invalid_order_items
FROM order_items oi
LEFT JOIN orders o
ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;

# order_items without products
SELECT COUNT(*) AS invalid_products
FROM order_items oi
LEFT JOIN products p
ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;

# websessions without customers
SELECT COUNT(*) AS invalid_sessions
FROM web_sessions ws
LEFT JOIN customers c
ON ws.customer_id = c.customer_id
WHERE c.customer_id IS NULL;