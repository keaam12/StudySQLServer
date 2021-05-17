BEGIN TRAN

UPDATE userTBL SET addr = '제주' WHERE userID = 'KBS'

UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'

UPDATE userTBL SET addr = '미국' WHERE userID = 'KKH'

ROLLBACK

BEGIN TRAN

UPDATE userTBL SET addr = '미국' WHERE userID = 'KKH'
ROLLBACK

BEGIN TRAN

UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'
COMMIT

SELECT * FROM userTBL


-- Transaction 처리순서 시뮬
USE sampleDB;
GO

CREATE TABLE testTbl (num INT);
GO
INSERT INTO testTbl VALUES (1), (3), (5);
-- 실행하지마세오
BEGIN TRAN
UPDATE testTbl SET num = 11 WHERE num = 1;
UPDATE testTbl SET num = 33 WHERE num = 3;
UPDATE testTbl SET num = 55 WHERE num = 5;
ROLLBACK
SELECT * FROM testTbl;

SELECT @@TRANCOUNT