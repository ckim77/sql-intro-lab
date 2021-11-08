--- ORDERS --- 

-- #1

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(20),
  product_price FLOAT,
  quantity INTEGER
);

-- #2

INSERT INTO orders (product_id, product_name, product_price, quantity)
VALUES (123, 'PS5', 500.99, 3),
       (440, 'Skateboard', 30.40, 1000),
       (101, 'Laptop', 990, 10000),
       (555, 'Jordans', 150, 40),
       (600, 'Iphone', 420.69, 300)

-- #3
SELECT * FROM orders

-- #4
SELECT SUM(quantity) FROM orders;

-- #5
SELECT SUM(product_price) FROM orders;

-- #6
SELECT SUM(product_price) FROM orders
GROUP BY person_id;

