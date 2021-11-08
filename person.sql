--- PERSON ---
--#1

CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    age INTEGER,
    height INTEGER,
	city VARCHAR(30),
    favorite_color VARCHAR(30)
);

--#2

INSERT INTO person (name, age, height)
VALUES ('John', 25, 185, 'Austin', 'red');

INSERT INTO person (name, age, height)
VALUES ('Sally', 40, 160,'Seattle', 'blue'); 

INSERT INTO person (name, age, height)
VALUES ('Chad', 18, 193, 'Provo', 'teal'); 

INSERT INTO person (name, age, height)
VALUES ('Billy', 75, 175, 'Dallas', 'yellow'); 

INSERT INTO person (name, age, height)
VALUES ('Ella', 33, 166, 'Lehi', 'green'); 

--#3

SELECT * FROM person 
ORDER BY height DESC;

--#4

SELECT * FROM person 
ORDER BY height;

--#5

SELECT * FROM person 
ORDER BY age DESC;

--#6

SELECT * FROM person
WHERE age > 20;

--#7

SELECT * FROM person
WHERE age = 18;

--#8

SELECT * FROM person
WHERE age < 20 
OR age > 30;

--#9

SELECT * FROM person
WHERE age <> 27;

--#10

SELECT * FROM person
WHERE favorite_color <> 'red';

-- #11

SELECT * FROM person
WHERE favorite_color <> 'red'
AND favorite_color <> 'blue';

-- #12 
SELECT * FROM person
WHERE favorite_color <> 'orange'
OR favorite_color <> 'green';

-- #13 
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- #14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');
 
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




