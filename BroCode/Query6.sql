INSERT INTO products
VALUES (104, "cookie", 0);

ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;

INSERT INTO products
VALUES (100, "hamburger", 3.99),
	   (101, "fries", 1.89),
       (102, "soda", 1.00),
       (103, "ice cream", 1.49);

CREATE TABLE products(
        product_id INT,
        product_name VARCHAR(25) UNIQUE,
        price DECIMAL(4, 2) NOT NULL
);

ALTER TABLE products
ADD CONSTRAINT
UNIQUE (product_name);

SELECT * FROM products


