-- �����Լ�
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '���ż���'
     , userID, SUM(price * amount) AS '����ں����űݾ�'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO
   ;

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS 'Ű����' 
     , name, height, addr
	   FROM userTbl
 WHERE height IS NOT NULL;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS 'Ű����' 
     , name, height, addr
	   FROM userTbl
 WHERE height IS NOT NULL;

SELECT DENSE_RANK() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����' 
     , name, height, addr
	   FROM userTbl
 WHERE height IS NOT NULL;

 USE sqlDB;
 SELECT U.userid, U.name, B.prodName, U.addr, U.mobile1 + U,mobile2 AS [����ó]
  FROM userTbl U
  LEFT OUTER JOIN buyTbl B
