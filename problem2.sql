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