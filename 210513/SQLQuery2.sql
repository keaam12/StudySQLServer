USE sqlDB
Go

SELECT * FROM userTbl
 WHERE userID = 'kkh';
 -- ����� ���̺��� ����⵵ 1970���� 1980�� �����̰� Ű�� 180 �̻��� ����� ��ȸ�ϼ���.
 SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND birthYear <= 1980	
  AND  height >= 180;

  -- ����⵵�� 1970�� �����̰ų� Ű�� 182�̻��� ��� ��ȸ
  SELECT * FROM userTbl
  WHERE birthYear >= 1970 OR height >= 182;

  SELECT * FROM userTbl
  WHERE birthYear BETWEEN 1970 AND 1980 AND height >= 180;

  -- ����� �߿� ������ �泲, ����, ����� ����� ��ȸ
  SELECT [name], userID, addr FROM userTbl
  WHERE addr = '�泲' OR addr = '����' OR addr = '���';
  
  SELECT [name], userID, addr FROM userTbl
   WHERE addr IN ('�泲', '���', '����');


   -- LIKE ��(���ڿ����� ���ϴ� ���ڿ��� �ִ� (contain))

   SELECT name, height, addr FROM userTbl
    WHERE name LIKE '%��%';

	-- SubQuery
	-- Ű�� 175���� ū ����� ��ȸ
	SELECT * FROM userTbL
	WHERE height > 175;

	-- ���ȣ���� Ű�� ū ����� ��ȸ
	SELECT * FROM userTbl
	WHERE height > (SELECT height FROM userTbl WHERE name = '���ȣ');
	-- �泲�� ��� ����麸�� Ű�� ū ����� ��ȸ
		SELECT * FROM userTbl
	WHERE height = ANY (SELECT height FROM userTbl WHERE addr = '�泲');

	-- ANY�� IN�� ������������ ���� �ܷΰ��� ��ġ�ϴ� ����� ��ȸ

	--ORDERBY
	SELECT * FROM userTbl
	 ORDER BY addr DESC, birthYear DESC;