CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR(50) UNIQUE,
  password VARCHAR(50)
);

CREATE TABLE customers (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50),
  phone VARCHAR(50) UNIQUE,
  address VARCHAR(50)
);

CREATE TABLE categories 
  (id INTEGER, 
  name VARCHAR(50));

CREATE TABLE items (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50) DEFAULT NULL,
  price REAL DEFAULT 0
);

CREATE TABLE item_categories (
  item_id INT,
  category_id INT,
  FOREIGN KEY(item_id) REFERENCES items(id),
  FOREIGN KEY(category_id) REFERENCES categories(id)
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  customer_id INT,
  total INT,
  order_date DATE,
  created_by INT,
  FOREIGN KEY(customer_id) REFERENCES customers(id),
  FOREIGN KEY(created_by) REFERENCES users(id)
);

CREATE TABLE order_details (
  id INTEGER PRIMARY KEY,
  order_id INT,
  item_id INT,
  quantity INT,
  item_price DOUBLE,
  FOREIGN KEY(order_id) REFERENCES orders(id),
  FOREIGN KEY(item_id) REFERENCES items(id)
);

INSERT INTO users(username, password) VALUES
  ('askar', 'password');

INSERT INTO customers(name, phone, address) VALUES
  ('Budiawan', '+6212345678', 'Jl Kerto'),
  ('Mary Jones', '+6287654321', 'Jl MT Haryono'),
  ('Budiawan', '+6289753124', 'Jl Kerto');

INSERT INTO items (name, price) VALUES 
('Nasi Goreng Gila', 15000),
('Ice Water', 13000),
('Cordon Bleu', 36000),
('Green Tea Latte', 20000),
('Mango Juice', 15000),
('Orange Juice', 15000),
('Spaghetti', 15000);

-- UPDATE items SET name = 'Nasi Goreng Gila' where id = 1;
UPDATE items SET name = 'Ice Water', price = 2000 where id = 2;

INSERT INTO categories (name) VALUES 
('main dish'), 
('beverage'), 
('dessert');

INSERT INTO item_categories (item_id, category_id) VALUES 
(1, 1), 
(2, 2), 
(3, 1),
(4, 2), 
(5, 2), 
(6, 2), 
(7, 1);

INSERT INTO orders (customer_id, total, order_date, created_by)VALUES
  (1, 27000, "2020-10-10", 1),
  (2, 58000, "2020-10-10", 1),
  (3, 55000, "2020-10-10", 1),
  (1, 27000, "2020-10-11", 1),
  (2, 54000, "2020-10-11", 1);

INSERT INTO order_details(order_id, item_id, quantity, item_price) VALUES
  (1, 1, 1, 15000),
  (1, 2, 1, 12000),
  (2, 7, 1, 5000),
  (2, 4, 1, 5000),
  (3, 7, 1, 5000),
  (3, 6, 1, 5000),
  (4, 1, 1, 5000),
  (4, 2, 1, 5000),
  (5, 3, 1, 5000),
  (5, 4, 1, 5000);


SELECT "----------------------------------";

-- 2
SELECT od.order_id, o.order_date, c.name, c.phone, o.total, GROUP_CONCAT(i.name) as items
FROM order_details od
LEFT JOIN orders o ON o.id = od.order_id
LEFT JOIN customers c ON c.id = o.customer_id
LEFT JOIN items i ON i.id = od.item_id
GROUP BY o.id;
SELECT "----------------------------------";


