CREATE DATABASE ninja;
CREATE USER 'ninja'@'localhost' IDENTIFIED BY 'ninja';
GRANT ALL PRIVILEGES ON ninja.* TO 'ninja'@'localhost';