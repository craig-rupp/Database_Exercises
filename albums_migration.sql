USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	artist VARCHAR(100),
	name VARCHAR (80),
	release_date YEAR(4),
	sales DOUBLE,
	genre VARCHAR(80),
	PRIMARY KEY (id)
);