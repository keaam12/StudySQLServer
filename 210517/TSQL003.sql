-- ������ �ݾ׿� ���� �ֿ��/���/�Ϲݰ����� �з��ϴ� ���� �ۼ�
SELECT u.userID AS '����ھ��̵�'
	 , u.name AS 'ȸ����'
     , IIF(SUM(b.price * b.amount) IS NULL
	 , 0
	 , SUM(b.price * b.amount)) AS [�ѱ��űݾ�]
 CASE 
 WHEN SUM(b.price * b.amount) >= 1500 THEN '�ֿ����'
 WHEN SUM(b.price * b.amount) >= 1000 THEN '�����'
 WHEN SUM(b.price * b.amount) >= 1 THEN '�Ϲݰ�'
 ELSE '���ɰ�'
 END AS [�����]

  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b -- userTbl�� �� ũ�� �׷��� ������ LEFT OUTER JOIN�� �̿�, NULL�� ǥ��
    ON u.userID = b.userID
 GROUP BY u.userID, u.name
 -- ORDER BY SUM(b.price * b.amount) DESC