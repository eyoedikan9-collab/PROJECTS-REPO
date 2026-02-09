-- # SQL Practice Exercises (Levels 1–3)

-- # This worksheet contains a sample dataset, instructions to load it into a database, and SQL practice
-- # exercises covering Levels 1 to 3. Target audience: beginners learning SQL.

-- # 1. Database Schema
-- # CREATE TABLE users (
-- # id INTEGER PRIMARY KEY,
-- # email TEXT,
-- # created_at DATE
-- # );
-- # CREATE TABLE orders (
-- # id INTEGER PRIMARY KEY,
-- # user_id INTEGER,
-- # total_amount NUMERIC,
-- # created_at DATE
-- # );
-- # CREATE TABLE order_items (
-- # id INTEGER PRIMARY KEY,
-- # order_id INTEGER,
-- # product_name TEXT,
-- # quantity INTEGER,
-- # price NUMERIC
-- # );

-- # 2. Sample Data
-- # Users
-- # INSERT INTO users (id, email, created_at) VALUES
-- # (1, 'alice@example.com', '2024-01-10'),
-- # (2, 'bob@example.com', '2024-01-15'),
-- # (3, 'charlie@example.com', '2024-02-01'),
-- # (4, 'diana@example.com', '2024-02-10'),
-- # (5, 'eve@example.com', '2024-02-20');
-- # Orders
-- # INSERT INTO orders (id, user_id, total_amount, created_at) VALUES
-- # (1, 1, 15000, '2024-02-01'),
-- # (2, 1, 8000, '2024-02-05'),
-- # (3, 2, 12000, '2024-02-07'),
-- # (4, 3, 5000, '2024-02-10'),
-- # (5, 3, 20000, '2024-02-12');
-- # Order Items
-- # INSERT INTO order_items (id, order_id, product_name, quantity, price) VALUES
-- # (1, 1, 'Book', 2, 3000),
-- # (2, 1, 'Pen', 5, 500),
-- # (3, 2, 'Notebook', 4, 2000),
-- # (4, 3, 'Bag', 1, 12000),
-- # (5, 4, 'Pencil', 10, 500),
-- # (6, 5, 'Shoes', 2, 10000);

-- 3. Instructions
-- 1. Create a new database.
C:\Users\USER>psql -U postgres -d exercises
Password for user postgres:
psql (18.1)
WARNING: Console code page (850) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

exercises=#

-- 2. Run the CREATE TABLE statements.
exercises=# CREATE TABLE users (
exercises(# id INTEGER PRIMARY KEY,
exercises(# email TEXT,
exercises(# created_at DATE
exercises(# );
CREATE TABLE
exercises=# CREATE TABLE orders (
exercises(# id INTEGER PRIMARY KEY,
exercises(# user_id INTEGER,
exercises(# total_amount NUMERIC,
exercises(# created_at DATE
exercises(# );
CREATE TABLE
exercises=# CREATE TABLE order_items (
exercises(# id INTEGER PRIMARY KEY,
exercises(# order_id INTEGER,
exercises(# product_name TEXT,
exercises(# quantity INTEGER,
exercises(# price NUMERIC
exercises(# );
CREATE TABLE

-- 3. Run the INSERT statements in the order shown.
exercises=# INSERT INTO users (id, email, created_at) VALUES
exercises-# (1, 'alice@example.com', '2024-01-10'),
exercises-# (2, 'bob@example.com', '2024-01-15'),
exercises-# (3, 'charlie@example.com', '2024-02-01'),
exercises-# (4, 'diana@example.com', '2024-02-10'),
exercises-# (5, 'eve@example.com', '2024-02-20');
INSERT 0 5

exercises=# INSERT INTO orders (id, user_id, total_amount, created_at) VALUES
exercises-# (1, 1, 15000, '2024-02-01'),
exercises-# (2, 1, 8000, '2024-02-05'),
exercises-# (3, 2, 12000, '2024-02-07'),
exercises-# (4, 3, 5000, '2024-02-10'),
exercises-# (5, 3, 20000, '2024-02-12');
INSERT 0 5

exercises=# INSERT INTO order_items (id, order_id, product_name, quantity, price) VALUES
exercises-# (1, 1, 'Book', 2, 3000),
exercises-# (2, 1, 'Pen', 5, 500),
exercises-# (3, 2, 'Notebook', 4, 2000),
exercises-# (4, 3, 'Bag', 1, 12000),
exercises-# (5, 4, 'Pencil', 10, 500),
exercises-# (6, 5, 'Shoes', 2, 10000);
INSERT 0 6


-- 4. Verify the data using SELECT * FROM each table.
exercises=# SELECT * FROM users;
 id |        email        | created_at
----+---------------------+------------
  1 | alice@example.com   | 2024-01-10
  2 | bob@example.com     | 2024-01-15
  3 | charlie@example.com | 2024-02-01
  4 | diana@example.com   | 2024-02-10
  5 | eve@example.com     | 2024-02-20
(5 rows)

exercises=# SELECT * FROM orders;
 id | user_id | total_amount | created_at
----+---------+--------------+------------
  1 |       1 |        15000 | 2024-02-01
  2 |       1 |         8000 | 2024-02-05
  3 |       2 |        12000 | 2024-02-07
  4 |       3 |         5000 | 2024-02-10
  5 |       3 |        20000 | 2024-02-12
(5 rows)

exercises=# SELECT * FROM order_items;
 id | order_id | product_name | quantity | price
----+----------+--------------+----------+-------
  1 |        1 | Book         |        2 |  3000
  2 |        1 | Pen          |        5 |   500
  3 |        2 | Notebook     |        4 |  2000
  4 |        3 | Bag          |        1 | 12000
  5 |        4 | Pencil       |       10 |   500
  6 |        5 | Shoes        |        2 | 10000
(6 rows)


-- 5. Do not modify the data while solving the exercises.

-- 4. Exercises
-- Level 1 – Single Table Queries
-- 1. List all users.
exercises=# SELECT * FROM users;
 id |        email        | created_at
----+---------------------+------------
  1 | alice@example.com   | 2024-01-10
  2 | bob@example.com     | 2024-01-15
  3 | charlie@example.com | 2024-02-01
  4 | diana@example.com   | 2024-02-10
  5 | eve@example.com     | 2024-02-20
(5 rows)

-- 2. Find users created after '2024-01-01'.
exercises=# SELECT * FROM users
exercises-# WHERE created_at > '2024-01-01';
 id |        email        | created_at
----+---------------------+------------
  1 | alice@example.com   | 2024-01-10
  2 | bob@example.com     | 2024-01-15
  3 | charlie@example.com | 2024-02-01
  4 | diana@example.com   | 2024-02-10
  5 | eve@example.com     | 2024-02-20
(5 rows)

-- 3. Show each order’s ID and total amount.
exercises=# SELECT id, total_amount
exercises-# FROM orders;
 id | total_amount
----+--------------
  1 |        15000
  2 |         8000
  3 |        12000
  4 |         5000
  5 |        20000
(5 rows)

-- 4. Find orders where total_amount is greater than 10,000.
exercises=# SELECT * FROM orders
exercises-# WHERE total_amount > 10000;
 id | user_id | total_amount | created_at
----+---------+--------------+------------
  1 |       1 |        15000 | 2024-02-01
  3 |       2 |        12000 | 2024-02-07
  5 |       3 |        20000 | 2024-02-12


-- 5. List all orders ordered by created_at (newest first).
exercises=# SELECT * FROM orders
exercises-# ORDER BY created_at;
 id | user_id | total_amount | created_at
----+---------+--------------+------------
  1 |       1 |        15000 | 2024-02-01
  2 |       1 |         8000 | 2024-02-05
  3 |       2 |        12000 | 2024-02-07
  4 |       3 |         5000 | 2024-02-10
  5 |       3 |        20000 | 2024-02-12
(5 rows)


-- Level 2 – Relationships (Joins)
-- 6. Show order ID, user email, and order total.
exercises=# SELECT order_id, email, total_amount
exercises-# FROM orders
exercises-# INNER JOIN users ON users.id = orders.user_id
exercises-# INNER JOIN order_items ON orders.id = order_items.order_id;
 order_id |        email        | total_amount
----------+---------------------+--------------
        1 | alice@example.com   |        15000
        1 | alice@example.com   |        15000
        2 | alice@example.com   |         8000
        3 | bob@example.com     |        12000
        4 | charlie@example.com |         5000
        5 | charlie@example.com |        20000
(6 rows)

-- 7. Show user ID, email, and order ID (include users with no orders).
exercises=# SELECT user_id, email, orders.id
exercises-# FROM users
exercises-# LEFT JOIN orders ON orders.user_id = user_id;
 user_id |        email        | id
---------+---------------------+----
       1 | alice@example.com   |  1
       1 | alice@example.com   |  2
       2 | alice@example.com   |  3
       3 | alice@example.com   |  4
       3 | alice@example.com   |  5
       1 | bob@example.com     |  1
       1 | bob@example.com     |  2
       2 | bob@example.com     |  3
       3 | bob@example.com     |  4
       3 | bob@example.com     |  5
       1 | charlie@example.com |  1
       1 | charlie@example.com |  2
       2 | charlie@example.com |  3
       3 | charlie@example.com |  4
       3 | charlie@example.com |  5
       1 | diana@example.com   |  1
       1 | diana@example.com   |  2
       2 | diana@example.com   |  3
       3 | diana@example.com   |  4
       3 | diana@example.com   |  5
       1 | eve@example.com     |  1
       1 | eve@example.com     |  2
       2 | eve@example.com     |  3
       3 | eve@example.com     |  4
       3 | eve@example.com     |  5
(25 rows)

-- 8. Show order ID, product name, and quantity.
exercises=# SELECT order_id, product_name, quantity
exercises-# FROM order_items;
 order_id | product_name | quantity
----------+--------------+----------
        1 | Book         |        2
        1 | Pen          |        5
        2 | Notebook     |        4
        3 | Bag          |        1
        4 | Pencil       |       10
        5 | Shoes        |        2
(6 rows)

-- 9. Show only orders that have at least one item.
exercises=# SELECT *
exercises-# FROM orders
exercises-# INNER JOIN order_items ON order_items.order_id = orders.id;
 id | user_id | total_amount | created_at | id | order_id | product_name | quantity | price
----+---------+--------------+------------+----+----------+--------------+----------+-------
  1 |       1 |        15000 | 2024-02-01 |  1 |        1 | Book         |        2 |  3000
  1 |       1 |        15000 | 2024-02-01 |  2 |        1 | Pen          |        5 |   500
  2 |       1 |         8000 | 2024-02-05 |  3 |        2 | Notebook     |        4 |  2000
  3 |       2 |        12000 | 2024-02-07 |  4 |        3 | Bag          |        1 | 12000
  4 |       3 |         5000 | 2024-02-10 |  5 |        4 | Pencil       |       10 |   500
  5 |       3 |        20000 | 2024-02-12 |  6 |        5 | Shoes        |        2 | 10000
(6 rows)


-- 10. For each user, show the number of orders they have made.
exercises=# SELECT user_id, COUNT(id) AS number_of_orders
exercises-# FROM orders
exercises-# GROUP BY user_id;
 user_id | number_of_orders
---------+------------------
       3 |                2
       2 |                1
       1 |                2
(3 rows)

-- Level 3 – Aggregation & Reasoning
-- 11. For each user, show the total number of orders (include users with zero orders).
exercises=# SELECT u.id, COUNT(o.id) AS number_of_orders
exercises-# FROM users u
exercises-# LEFT JOIN orders o ON u.id = o.user_id
exercises-# GROUP BY u.id;
 id | number_of_orders
----+------------------
  2 |                1
  3 |                2
  5 |                0
  4 |                0
  1 |                2
(5 rows)

-- 12. For each user, calculate the total amount spent (users with no orders should show 0).
exercises=# SELECT o.user_id, SUM(o.user_id) AS sum_of_orders
exercises-# FROM users u
exercises-# LEFT JOIN orders o ON u.id = o.user_id
exercises-# GROUP BY o.user_id;
 user_id | sum_of_orders
---------+---------------
         |
       3 |             6
       2 |             2
       1 |             2
(4 rows)

-- 13. For each order, calculate the total quantity of items.
exercises=# SELECT order_id, SUM(quantity) AS total_quantity
exercises-# FROM order_items
exercises-# GROUP BY order_id;
 order_id | total_quantity
----------+----------------
        3 |              1
        5 |              2
        4 |             10
        2 |              4
        1 |              7
(5 rows)

-- 14. For each user, calculate the average order value (exclude users with no orders).
exercises=# SELECT u.id, AVG(o.id) AS average_order_value
exercises-# FROM users u
exercises-# LEFT JOIN orders o ON u.id = o.user_id
exercises-# GROUP BY u.id;
 id | average_order_value
----+---------------------
  2 |  3.0000000000000000
  3 |  4.5000000000000000
  5 |
  4 |
  1 |  1.5000000000000000
(5 rows)


-- 15. Find orders where the total quantity of items is greater than 3.
exercises=# SELECT  order_id, SUM(quantity) AS total_quantity
exercises-# FROM order_items
exercises-# GROUP BY order_id
exercises-# HAVING SUM(quantity) > 3;
 order_id | total_quantity
----------+----------------
        4 |             10
        2 |              4
        1 |              7
(3 rows)

-- 16. For each order, calculate the total price using quantity × price.
exercises=# SELECT order_id, SUM(quantity * price) AS total_price
exercises-# FROM order_items
exercises-#
exercises-# GROUP BY order_id;
 order_id | total_price
----------+-------------
        3 |       12000
        5 |       20000
        4 |        5000
        2 |        8000
        1 |        8500
(5 rows)


-- 17. Find orders where the stored total differs from the calculated total.
exercises=# SELECT o.id, o.total_amount AS stored_total, SUM(oi.quantity * oi.price) AS calculated_total
exercises-# FROM orders o
exercises-# LEFT JOIN order_items oi ON oi.order_id = o.id
exercises-# GROUP BY o.id, o.total_amount
exercises-# HAVING o.total_amount <> SUM(oi.quantity * oi.price);
 id | stored_total | calculated_total
----+--------------+------------------
  1 |        15000 |             8500
(1 row)


-- 18. Find the top 5 users with the highest number of orders.
exercises=# SELECT user_id, COUNT(orders.user_id) AS number_of_orders
exercises-# FROM orders
exercises-# GROUP BY user_id
exercises-# ORDER BY number_of_orders DESC
exercises-# LIMIT 5;
 user_id | number_of_orders
---------+------------------
       3 |                2
       1 |                2
       2 |                1
(3 rows)