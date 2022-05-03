USE mydb2;

-- 댓글이 있는 게시물
-- JOIN
SELECT DISTINCT b.id, b.title FROM Board b JOIN Reply r ON b.id = r.board_id;
-- SUBQUERY
SELECT id, title From Board WHERE id IN (SELECT board_id FROM Reply); -- (1, 3, 9, 13, 14) 가 나오는 것


-- 댓글이 없는 게시물
-- JOIN
SELECT b.id, b.title FROM Board b LEFT JOIN Reply r ON b.id = r.board_id WHERE r.id IS NULL;
-- SUBQUERY
SELECT id, title From Board WHERE id NOT IN (SELECT board_id FROM Reply);


-- 게시글별 댓글수(JOIN)
SELECT b.*, count(r.id) NumOfReply FROM Board b LEFT JOIN Reply r ON b.id = r.board_id GROUP BY b.id ORDER BY b.id DESC;
-- 게시글별 댓글수(SUBQUERY)
SELECT b.*, (SELECT COUNT(r.id) From Reply r WHERE board_id = b.id) NumOfReply FROM Board b ORDER BY b.id DESC;

