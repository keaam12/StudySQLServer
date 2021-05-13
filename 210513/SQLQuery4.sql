INSERT INTO testTBL VALUES (1, '홍길동', '서울');
INSERT INTO testTBL (ID, userName, addr) VALUES (2, '설현', '서울');
INSERT INTO testTBL (userName) VALUES ('아이유');
INSERT INTO testTBL (addr, userName) VALUES ('세종','김형욱');
INSERT INTO testTBL (userName) VALUES ('홍길순');

SELECT * FROM testTBL;

DELETE  FROM testTBL;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '아이유', 1993, '서울')

SELECT * FROM userTbl WHERE userID = 'IU'

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH', '주지훈', 1982, '신안', 187);

SELECT * FROM userTbl;

BEGIN TRAN;

UPDATE testTbl
   SET userName = '성명건'
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '성명건'
	 , addr = '부산'
 WHERE Id = 4;

   SELECT * FROM testTbl;

   COMMIT;
   ROLLBACK;

   TRUNCATE TABLE testTbl;