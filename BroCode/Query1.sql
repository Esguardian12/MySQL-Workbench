CREATE TABLE employees(
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

SELECT * FROM employees;

RENAME TABLE workers TO employees;

ALTER TABLE employees
ADD phone_number VARCHAR(15);

SELECT * FROM employees;

ALTER TABLE employees
RENAME COLUMN phone_number TO email;

ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;


ALTER TABLE employees
DROP COLUMN email;

INSERT INTO employees
VALUES  (1, "EUGUNE", "KRABS", 25.50, "2023-01-02"),
		(2, "Squidward", "Tentacles", 15.00, "2023-01-03"),
        (3, "Spongebob", "Squarepants", 12.50, "2023-01-04"),
		(4, "Patrick", "Star", 12.50, "2023-01-05"),
	    (5, "Sandy", "Cheeks", 17.25, "2023-01-06");
        
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, "Sheldon", "Plankton");

UPDATE employees
SET hourly_pay = 10.50,
    hire_date = "2023-01-07"
WHERE employee_id = 6;

SELECT * FROM employees;