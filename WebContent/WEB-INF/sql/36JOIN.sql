USE mydb2;

-- 게시물별 댓글수 조회(단, 댓글없는 게시물은 나오지 않음)
DESC Board;
DESC Reply;
SELECT b.*, COUNT(r.id) numOfReply FROM Board b JOIN Reply r ON b.id = r.board_id GROUP BY b.id;
SELECT b.id, b.title, b.body, b.inserted, count(r.id) FROM Board b JOIN Reply r ON b.id = r.board_id GROUP BY b.id ORDER BY 1;
SELECT b.*, count(r.id) FROM Board b INNER JOIN Reply r ON b.id = r.board_id GROUP BY b.id ORDER BY 1; -- JOIN == INNER JOIN


-- INNER JOIN
SELECT * FROM Board b INNER JOIN Reply r ON b.id = r.board_id;
-- LEFT OUTER JOIN
SELECT * FROM Board b LEFT OUTER JOIN Reply r ON b.id = r.board_id;
-- RIGHT OUTER JOIN
SELECT * FROM Reply r RIGHT OUTER JOIN Board b ON b.id = r.board_id;


-- 댓글이 없는 게시물 조회
SELECT * FROM Board b LEFT JOIN Reply r ON b.id = r.board_id WHERE r.id IS NULL;

-- 전체 게시물 조회 (댓글 수 표시)
SELECT b.*, count(r.id) FROM Board b LEFT JOIN Reply r ON b.id = r.board_id GROUP BY b.id ORDER BY b.id DESC;

