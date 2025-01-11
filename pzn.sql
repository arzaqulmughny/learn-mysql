-- Show database list
SHOW DATABASES;

-- Create new database with name learn_mysql
CREATE DATABASE learn_mysql;

-- Select database with name learn_mysql
USE learn_mysql;

-- Show table list from selected database
SHOW TABLES;

DROP TABLE items;


-- Create new table named items, with columns
CREATE TABLE items(
	id INT,
	name VARCHAR(255) NOT NULL,
	price INT
)

-- Modify table
ALTER TABLE items ADD COLUMN description TEXT;

ALTER TABLE items MODIFY COLUMN id INT NOT NULL;

ALTER TABLE items MODIFY COLUMN price INT NOT NULL DEFAULT 0;

ALTER TABLE items ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
	
-- Show table structure from items table
DESCRIBE items;