#Revenue by State
SELECT
c.state,
SUM(o.order_amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.state;

#Revenue by Product Category
SELECT
p.category,
SUM(oi.sales) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category;

#Top Customers
SELECT
c.customer_name,
SUM(o.order_amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY revenue DESC
LIMIT 20;

#Most Active Website Visitors
SELECT
customer_id,
COUNT(*) AS sessions
FROM web_sessions
GROUP BY customer_id
ORDER BY sessions DESC;

#Average Order Value by State
SELECT
c.state,
AVG(o.order_amount) AS avg_order
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.state;

#Product Profitability
SELECT
p.category,
SUM(oi.profit) AS total_profit
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category;

#Heavy 3-Table Join
SELECT
c.customer_name,
SUM(oi.sales) AS total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_name;