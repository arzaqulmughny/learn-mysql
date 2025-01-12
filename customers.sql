SHOW DATABASES;

USE learn_mysql;

SHOW TABLES;

CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY (id),
	UNIQUE KEY email_unique (email)
);

DESCRIBE customers;

INSERT INTO customers(name, email)
VALUES ('Arza', 'arza@email.com'),
		('Arzaqul', 'arzaqul@email.com');

SELECT * FROM customers;

-- Unique test, should not work
INSERT INTO customers(name, email)
VALUES ('Arza', 'arza@email.com');

-- Unique test, should work
INSERT INTO customers(name, email)
VALUES ('Arza', 'arza1@email.com');

SELECT * FROM customers;