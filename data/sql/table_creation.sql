CREATE TABLE customers (

    customer_id BIGINT PRIMARY KEY,

    customer_name VARCHAR(150),

    city VARCHAR(100),

    state VARCHAR(100),

    registration_date DATE

);

CREATE TABLE products (

    product_id BIGINT PRIMARY KEY,

    product_name VARCHAR(200),

    category VARCHAR(100),

    price DECIMAL(10,2)

);

CREATE TABLE orders (

    order_id BIGINT PRIMARY KEY,

    customer_id BIGINT,

    order_date DATE,

    order_amount DECIMAL(12,2),

    payment_method VARCHAR(50),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)

);

CREATE TABLE order_items (

    order_item_id BIGINT PRIMARY KEY,

    order_id BIGINT,

    product_id BIGINT,

    quantity INT,

    sales DECIMAL(12,2),

    profit DECIMAL(12,2),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)

);

SHOW TABLES;

DESC customers;

DESC products;

DESC orders;

DESC order_items;