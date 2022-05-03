-- JOIN

USE mydb2;

SELECT * FROM Board; -- 4개의 컬럼(열) 7개의 행 
SELECT * FROM Reply; -- 6개의 열(컬럼) 9개의 행


SELECT * FROM Board, Reply; -- 결합(Cartesian Product) : 8개 열(4+4), 63개의 행(7*9)
SELECT * FROM Reply, Board; -- 순서 바꿀수 있음
SELECT * FROM Board JOIN Reply; -- Cartesian Product

SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN

