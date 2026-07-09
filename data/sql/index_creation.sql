CREATE INDEX idx_customers_state
ON customers(state);

SHOW INDEX FROM customers;

CREATE INDEX idx_products_category
ON products(category);

SHOW INDEX FROM orders;

CREATE INDEX idx_orders_customer_amount
ON orders(customer_id, order_amount);

CREATE INDEX idx_order_items_order_sales
ON order_items(order_id, sales);
