INSERT INTO testTBL VALUES (1, 'ȫ�浿', '����');
INSERT INTO testTBL (ID, userName, addr) VALUES (2, '����', '����');
INSERT INTO testTBL (userName) VALUES ('������');
INSERT INTO testTBL (addr, userName) VALUES ('����','������');
INSERT INTO testTBL (userName) VALUES ('ȫ���');

SELECT * FROM testTBL;

DELETE  FROM testTBL;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '������', 1993, '����')

SELECT * FROM userTbl WHERE userID = 'IU'

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH', '������', 1982, '�ž�', 187);

SELECT * FROM userTbl;

BEGIN TRAN;

UPDATE testTbl
   SET userName = '�����'
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '�����'
	 , addr = '�λ�'
 WHERE Id = 4;

   SELECT * FROM testTbl;

   COMMIT;
   ROLLBACK;

   TRUNCATE TABLE testTbl;