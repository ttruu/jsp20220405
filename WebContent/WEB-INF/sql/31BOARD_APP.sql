CREATE DATABASE mydb2;


USE mydb2;

CREATE TABLE Board (
	id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) not null,
    body VARCHAR(2000) not null,
    inserted DATETIME not null DEFAULT NOW()
);

-- 테이블 관계
-- 1 대 1
-- 예시> 학생테이블(이름, 생년월일...), 학력(출신학교, 졸업년도) 

-- 1 대 다 (1대n) 
-- 게시물(게시물번호, 내용), 댓글(댓글내용) 하나의 게시물이 댓글에 여러번 나타나게 되는 관계

-- 다 대 다 (n대n)
-- 학생(이름, 생년월일..), 회사(회사명..) 
DROP TABLE reply;

CREATE TABLE Reply (
	id INT PRIMARY KEY AUTO_INCREMENT,
	board_id int, -- foreign key (참조키, 외래키)
    content VARCHAR(255) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    FOREIGN KEY (board_id) REFERENCES Board(id) -- FOREIGN KEY 제약사항 추가

);

SELECT * FROM Board;
SET SQL_SAFE_UPDATES = 0;

UPDATE Board
SET inserted = DATE_SUB(inserted, INTERVAL 1 DAY);

SELECT * FROM Reply;





