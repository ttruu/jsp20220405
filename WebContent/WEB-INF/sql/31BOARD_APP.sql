CREATE DATABASE mydb2;

USE mydb2;

CREATE TABLE Board (
	id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) not null,
    body VARCHAR(2000) not null,
    inserted DATETIME not null DEFAULT NOW()
);

SELECT * FROM Board;
SET SQL_SAFE_UPDATES = 0;

UPDATE Board
SET inserted = DATE_SUB(inserted, INTERVAL 1 DAY);



