CREATE DATABASE mydb3;

USE mydb3;

DROP TABLE Board;
CREATE TABLE Board (
	id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) not null,
    content VARCHAR(2000) not null,
    write_time DATETIME not null DEFAULT NOW()
);