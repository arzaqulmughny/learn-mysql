-- Select learn_mysql as active database
use learn_mysql;

-- Create table with name products
CREATE TABLE products(
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	price INT UNSIGNED NOT NULL,
	description TEXT
);

-- Add created_at column into products table with timestamp data type, cannot be null and will be filled with the current time if left blank.
ALTER TABLE products
ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- Drop category column from products table
ALTER TABLE products
DROP COLUMN category;

-- Add category column, use VARCHAR with maximum 255 character, cannot be null, set default value to 'ALAT RUMAH TANGGA', add the column after name column
ALTER TABLE products
ADD COLUMN category VARCHAR(255) NOT NULL DEFAULT 'ALAT RUMAH TANGGA' AFTER name;

-- Show products table structure
DESCRIBE products;

-- Insert row
INSERT INTO products(id, name, price, description)
VALUES (1, 'WATER HEATER WH123', 150000, NULL);

INSERT INTO products(id, name, price)
VALUES (7, 'CLEO', 0);

INSERT INTO products(id, name, price)
VALUES (8, 'INVALID PRODUCT', 0);

-- Insert multi rows, separated by comma
INSERT INTO products(id, name, price, description)
VALUES (5, 'WATER PUMP WP321', 20000, 'Alat untuk memudahkan dalam menuangkan air dari galon'),
		(6, 'RICE COOKER RC123', 200000, 'Penanak Nasi');

-- Update the value in the category column on the row that has the id 7
UPDATE products
SET category = 'Konsumsi'
WHERE id = 7;

-- Set id column as primary key, primary key can prevent duplicate rows in the id column
ALTER TABLE products
ADD PRIMARY KEY(id);

-- Set value of description column to row that description value is null
UPDATE products SET description = '' WHERE description IS NULL;

-- Show row
SELECT * FROM products;
SELECT id, name FROM products;
SELECT * FROM products WHERE price = 0;

-- Delete row
DELETE FROM products WHERE id = 8;

-- Aliases
SELECT 
	id AS 'CODE',
	name AS 'PRODUCT NAME'
FROM products;

-- Ordering, default ASC (lowest to highest)
SELECT * FROM products ORDER BY price;
SELECT * FROM products ORDER BY price DESC;
SELECT * FROM products ORDER BY category DESC;
SELECT * FROM products ORDER BY created_at DESC;

-- Limit
-- Take 2 rows
SELECT * FROM products LIMIT 2;

-- Skip 2 rows, take 2 rows
SELECT * FROM products LIMIT 2, 2;