USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
id int UNSIGNED NOT NULL AUTO_INCREMENT,
artist varchar(50),
name varchar (50),
release_date date,
sales FLOAT,
genre varchar (50),
PRIMARY KEY (id)
)