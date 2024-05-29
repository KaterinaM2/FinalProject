-- Switch to the ecommerce database
USE planteshop;
-- Create the users table
CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
-- Create the products table
CREATE TABLE products (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL,
    description TEXT NOT NULL
);
-- Create the orders table
CREATE TABLE orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
-- Create the user_addresses table
CREATE TABLE user_addresses (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    address_line1 VARCHAR(255) NOT NULL,
    address_line2 VARCHAR(255),
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    zip_code VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

SHOW TABLES;

-- Insert data into tables

INSERT INTO users (username, password, email) VALUES
('john_doe', 'password123', 'john@example.com'),
('jane_smith', 'password123', 'jane@example.com'),
('michael_brown', 'password123', 'michael@example.com'),
('emily_jones', 'password123', 'emily@example.com'),
('david_wilson', 'password123', 'david@example.com'),
('sophia_martin', 'password123', 'sophia@example.com'),
('chris_lee', 'password123', 'chris@example.com'),
('olivia_garcia', 'password123', 'olivia@example.com'),
('daniel_moore', 'password123', 'daniel@example.com'),
('mia_taylor', 'password123', 'mia@example.com');

INSERT INTO products (name, price, quantity, description) VALUES
('Fiddle Leaf Fig', 45.99, 30, 'A popular indoor plant with large, glossy leaves.'),
('Snake Plant', 25.50, 50, 'An easy-to-care-for plant with tall, upright leaves.'),
('Monstera Deliciosa', 35.75, 20, 'A trendy plant known for its unique, perforated leaves.'),
('Pothos', 15.00, 100, 'A hardy plant that thrives in a variety of conditions.'),
('Peace Lily', 22.25, 40, 'A beautiful plant with white flowers that purifies the air.'),
('Spider Plant', 18.00, 60, 'An easy-to-grow plant with arching leaves.'),
('Aloe Vera', 12.99, 80, 'A succulent plant known for its medicinal properties.'),
('ZZ Plant', 29.99, 25, 'A low-maintenance plant with shiny, dark green leaves.'),
('Rubber Plant', 40.00, 35, 'A plant with large, glossy leaves that can grow quite tall.'),
('Succulent Variety Pack', 20.00, 75, 'A collection of assorted succulents.');

INSERT INTO orders (user_id, product_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1),
(4, 4, 3),
(5, 5, 1),
(6, 6, 2),
(7, 7, 1),
(8, 8, 4),
(9, 9, 2),
(10, 10, 5);

INSERT INTO user_addresses (user_id, address_line1, address_line2, city, state, zip_code, phone_number) VALUES
(1, '123 Main St', 'Apt 1', 'Springfield', 'IL', '62701', '555-1234'),
(2, '456 Elm St', '', 'Chicago', 'IL', '60601', '555-5678'),
(3, '789 Oak St', 'Suite 100', 'Los Angeles', 'CA', '90001', '555-8765'),
(4, '101 Pine St', '', 'San Francisco', 'CA', '94101', '555-4321'),
(5, '202 Maple St', 'Unit B', 'New York', 'NY', '10001', '555-1357'),
(6, '303 Cedar St', '', 'Austin', 'TX', '73301', '555-2468'),
(7, '404 Birch St', 'Apt 4', 'Seattle', 'WA', '98101', '555-9753'),
(8, '505 Walnut St', '', 'Denver', 'CO', '80201', '555-8642'),
(9, '606 Ash St', 'Suite 300', 'Miami', 'FL', '33101', '555-7531'),
(10, '707 Cherry St', '', 'Boston', 'MA', '02101', '555-6428');

show tables;

select * from users;
-- Insert Name and Surname in users --
ALTER TABLE users ADD COLUMN name VARCHAR(255) NOT NULL;
ALTER TABLE users ADD COLUMN surname VARCHAR(255) NOT NULL;

-- Set values to new columns --
UPDATE users
SET 
    Name = CASE 
        WHEN id = 1 THEN 'John'
        WHEN id = 2 THEN 'Jane'
        WHEN id = 3 THEN 'Michael'
        WHEN id = 4 THEN 'Emily'
        WHEN id = 5 THEN 'David'
        WHEN id = 6 THEN 'Sophia'
        WHEN id = 7 THEN 'Chris'
        WHEN id = 8 THEN 'Olivia'
        WHEN id = 9 THEN 'Daniel'
        WHEN id = 10 THEN 'Mia'
        ELSE Name
    END,
    Surname = CASE
        WHEN id = 1 THEN 'Doe'
        WHEN id = 2 THEN 'Smith'
        WHEN id = 3 THEN 'Brown'
        WHEN id = 4 THEN 'Jones'
        WHEN id = 5 THEN 'Wilson'
        WHEN id = 6 THEN 'Martin'
        WHEN id = 7 THEN 'Lee'
        WHEN id = 8 THEN 'Garcia'
        WHEN id = 9 THEN 'Moore'
        WHEN id = 10 THEN 'Taylor'
        ELSE Surname
    END
WHERE id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

select * from users;
