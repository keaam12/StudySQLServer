-- DELETE
-- WHERE�� �Ⱦ��� �������� ����.
BEGIN TRAN;

-- DELETE FROM testTbL
--  WHERE Id = 4;

INSERT INTO testTBL VALUES ('�ֿ��', 'ĳ��');

UPDATE testTbl
   SET userName = '������'
	 , addr = '����'
 WHERE Id = 3;

DELETE FROM testTbL
WHERE userName = 'ȫ���';


 SELECT * FROM testTbL;

 COMMIT;
 ROLLBACK;