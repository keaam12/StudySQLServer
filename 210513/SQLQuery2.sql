-- GROUP BY
-- ���̵𺰷� ���� ��ġ ����� ��ȸ
SELECT userID, SUM(amount) AS '�ѱ��Ű���' FROM buyTbl
 GROUP BY userID, amount; -- group by�� �ִ� ���� ������ select�� ���� ���;���

 SELECT userID, SUM(amount * price)
  FROM buyTbl
GROUP BY userID
ORDER BY SUM(amount * price) DESC;

SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl;

-- ��������̺��� Ű�� ���� ū ����ϰ� ���� ���� ��� ��ȸ
SELECT * FROM userTbl
 ORDER BY height DESC;

SELECT * FROM userTbl
 WHERE height = 166 OR height = 186;

SELECT name AS '�̸�', height AS [Ű]  FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY / HAVING
SELECT userID AS ����ھ��̵�
	 , SUM(price * amount) 
	   FROM buyTbl
	   -- WHERE SUM(price * amount) >= 1000 ����Ұ�
	   GROUP BY userID
	   HAVING SUM(price * amount) >= 1000;

-- ���
-- ��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName
	 , userID
	 , SUM(price * amount) AS [�ѱ��űݾ�]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP (groupName, userID); -- �����̳� �߰��հ谡 �ʿ��� �� ���


