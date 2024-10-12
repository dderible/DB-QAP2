--Author: Declan Derible

--TABLES
CREATE TABLE products (
	id int AUTO_INCREMENT PRIMARY KEY,
	product_name TEXT,
	price DECIMAL(10, 2),
	stock_quantity INT
);

CREATE TABLE customers (
	id int AUTO_INCREMENT PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	email TEXT
);

CREATE TABLE orders (
	id int AUTO_INCREMENT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	FOREIGN KEY (customer_id) REFERENCES customers(id),
);

CREATE TABLE order_items (
	order_id INT,
	product_id INT,
	quantity INT,
	FOREIGN KEY (order_id) REFERENCES orders(id),
	FOREIGN KEY (product_id) REFERENCES products(id),
	PRIMARY KEY (order_id, product_id)
);

--INSERTED INFORMATION
INSERT INTO products (product_name, price, stock_quantity) VALUES
	('Laptop', 999.99, 20),
	('Headphones', 59.99, 80),
	('Nintendo Switch', 399.99, 65),
	('Monitor', 149.99, 12),
	('Speaker', 109.99, 30);

INSERT INTO customers (first_name, last_name, email) VALUES
	('Declan', 'Derible', 'declan.derible@keyin.com'),
	('Evan', 'Morris', 'evan.morris@keyin.com'),
	('Logan', 'Janes', 'logan.janes@keyin.com'),
	('Gavin', 'Janes', 'gavin.janes@keyin.com');

INSERT INTO orders (customer_id, order_date)
	(1, '2024-10-12'),
	(2, '2024-09-28'),
	(3, '2023-04-20'),
	(4, '2024-02-03'),
	(5, '2024-07-01');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
	(1, 1, 1),
	(1, 3, 1),
	(2, 5, 1),
	(2, 1, 2),
	(3, 2, 2),
	(3, 4, 1),
	(4, 4, 4),
	(4, 3, 1);

