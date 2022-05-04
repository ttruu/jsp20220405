-- 테이블 만드는 이야기

USE mydb3;

-- 중복되는 값이 없도록, NULL로 남지 않도록
-- 정규화 (Normal Form)
-- 제1정규화 (First NormalForm) 1NF
-- 제2정규화 (Second NormalForm) 2NF
-- 제3정규화 (Third NormalForm) 3NF


-- 제1정규화
-- 규칙1 : 열은 원자적(atomic) 값만을 포함한다
-- 규칙2 : 같은 데이터가 여러 열에 반복되지 말아야 한다 

-- 이름, 주소
CREATE TABLE Person1 (
	name VARCHAR(200) PRIMARY KEY,
    address VARCHAR(200)
);

SET autocommit = 1; -- auto commit enable
INSERT INTO Person1 (name, address) VALUES ('A', '서울시 강남구 역삼동 111');
COMMIT;

CREATE TABLE toy (
	toy_id INT PRIMARY KEY,
    toy VARCHAR(255)
);

CREATE TABLE toy_color (
	toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id),
    PRIMARY KEY (toy_id, color)
);

DROP TABLE toy_color;
CREATE TABLE toy_color (
    toy_color_id INT PRIMARY KEY AUTO_INCREMENT,
	toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id)
);


