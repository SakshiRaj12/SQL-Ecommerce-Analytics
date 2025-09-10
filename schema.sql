-- Create tables

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_city VARCHAR(100),
    customer_state VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(100)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    price DECIMAL(10,2),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_type VARCHAR(50),
    payment_value DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert sample data (you can expand with Kaggle dataset)
INSERT INTO customers VALUES
(1, 'Alice', 'New York', 'NY'),
(2, 'Bob', 'Los Angeles', 'CA'),
(3, 'Charlie', 'Chicago', 'IL');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics'),
(102, 'Headphones', 'Electronics'),
(103, 'Coffee Maker', 'Home Appliances');

INSERT INTO orders VALUES
(1001, 1, '2023-01-15', 'Delivered'),
(1002, 2, '2023-02-05', 'Delivered'),
(1003, 3, '2023-02-20', 'Cancelled');

INSERT INTO order_items VALUES
(1, 1001, 101, 1200.00, 1),
(2, 1001, 102, 150.00, 2),
(3, 1002, 103, 80.00, 1);

INSERT INTO payments VALUES
(501, 1001, 'Credit Card', 1500.00),
(502, 1002, 'PayPal', 80.00);
