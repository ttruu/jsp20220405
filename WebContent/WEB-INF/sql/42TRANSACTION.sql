USE mydb2;

DELETE FROM Reply WHERE board_id = 9;
DELETE FROM Board WHERE id = 9;
COMMIT;

SELECT * FROM Reply WHERE board_id = 9;