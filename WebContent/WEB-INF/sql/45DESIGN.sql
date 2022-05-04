
-- 제2정규화(Second NormalForm) 2NF (책 363p)
-- 규칙1 : 1NF이어야 한다
-- 규칙2 : 부분적 함수 의존이 없다 
		-- 키가 아닌 열이 합성키의 일부에 종속되는 경우 


-- 제3정규화(Third NormalForm) 3nf (책 374쪽)
-- 제2정규형이어야 하고 
-- 이행적 종속이 없다 (책 3645쪽)
	-- 키가 아닌 열이 키가 아닌 다른 열에 종속되는 경우가 없다
    
CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    instructor_phone VARCHAR(255)
);

DROP TABLE course;

CREATE TABLE course (
	course_id int PRIMARY KEY AUTO_INCREMENT,
    course_name varchar(255),
    instructor_id INT,
    FOREIGN KEY (instructor_id) references instructor(instructor_id)
);

CREATE TABLE instructor (
	instructor_id INT PRIMARY KEY AUTO_INCREMENT,
	instructor_name VARCHAR(255),
    instructor_phone VARCHAR(255)
);
