-- DELETE
-- WHERE을 안쓰면 사유서를 쓴다.
BEGIN TRAN;

-- DELETE FROM testTbL
--  WHERE Id = 4;

INSERT INTO testTBL VALUES ('최우식', '캐낟');

UPDATE testTbl
   SET userName = '이지은'
	 , addr = '서울'
 WHERE Id = 3;

DELETE FROM testTbL
WHERE userName = '홍길순';


 SELECT * FROM testTbL;

 COMMIT;
 ROLLBACK;