DROP DATABASE IF EXISTS database_links;
CREATE DATABASE database_links CHARSET utf8mb4;
USE database_links;

-- usertable
CREATE TABLE  users(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(60) NOT NULL,
    email varchar(50) NOT NULL,
    fullname varchar(100) NOT NULL
)

CREATE TABLE links(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description text,
    user_id INT UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)