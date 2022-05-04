USE mydb3;

DESC w3schools.Products;
DESC w3schools.Categories;

CREATE TABLE Products (
	id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE Categories (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
    description VARCHAR(255)
);