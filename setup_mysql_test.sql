-- script that create new user that gain some privileges
CREATE DATABASE IF NOT EXISTS `hbnb_test_db`;
CREATE USER IF NOT EXISTS `hbnb_test`@localhost IDENTIFIED BY 'hbnb_test_pwd';
GRANT ALL PRIVILEGES ON `hbnb_test_db`.* TO `hbnb_test`@localhost;
GRANT SELECT ON `performance_schema`.* TO `hbnb_test`@localhost;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
