CREATE DATABASE  products;

USE products;

CREATE TABLE products (
    product_id BIGINT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255),
    price DOUBLE,
    quantity_in_stock INT NOT NULL,
    manufacture_date VARCHAR(255),
    is_available TINYINT(1) DEFAULT 1,
    PRIMARY KEY (product_id)
);

INSERT INTO products (product_name, price, quantity_in_stock, manufacture_date, is_available) VALUES
('Headphones', 59.99, 200, '2022-12-01', 1),
('Desk Lamp', 24.95, 150, '2023-06-25', 0),
('Coffee Machine', 129.99, 30, '2021-11-05', 1),
('New Product', 49.99, 100, '2023-09-25', 1),
('Updated Product', 59.99, 50, '2023-09-26', 0);
