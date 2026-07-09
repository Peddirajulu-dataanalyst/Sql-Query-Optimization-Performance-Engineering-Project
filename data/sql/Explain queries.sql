EXPLAIN 
SELECT
c.state,
SUM(o.order_amount)
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.state;

EXPLAIN 
SELECT
p.category,
SUM(oi.sales) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category;

EXPLAIN 
SELECT
c.customer_name,
SUM(o.order_amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY revenue DESC
LIMIT 20;

EXPLAIN 
SELECT
customer_id,
COUNT(*) AS sessions
FROM web_sessions
GROUP BY customer_id
ORDER BY sessions DESC;

EXPLAIN 
SELECT
c.state,
AVG(o.order_amount) AS avg_order
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.state;

EXPLAIN
SELECT
p.category,
SUM(oi.profit) AS total_profit
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category;


EXPLAIN 
SELECT
c.customer_name,
SUM(oi.sales) AS total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_name;


