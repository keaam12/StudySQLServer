-- ������ ��ȸ
SELECT * FROM userTbl;

--������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 where NAME LIKE '%��%';

 --Ư�� ���̺� ���ڵ� ���� Ȯ��
 SELECT COUNT(userID) FROM userTbl;

 -- ����� ���̺��� 
 -- Ű�� 180 �̻��̰� ����⵵�� 1970 ���Ŀ� �¾ ���
 -- �� ���̵�, �̸�, Ű�� ��ȸ�ϼ���
 SELECT userID, name, height FROM userTbl
  WHERE height >= 180
    AND birthYear >= 1970;

	--����⵵��(��������)���� �����ؼ� ��ȸ
	SELECT * FROM userTbl
	 ORDER BY birthYear DESC; -- ASC(ENDING) || DESC(ENDING)

-- SELECT INTO
SELECT * INTO userTbl_New FROM userTbl;

SELECT * FROM userTbl_New;

SELECT userID, name, addr INTo userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;



