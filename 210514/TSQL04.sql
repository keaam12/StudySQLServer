-- 순위함수
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '구매순위'
     , userID, SUM(price * amount) AS '사용자별구매금액'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO
   ;

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위' 
     , name, height, addr
	   FROM userTbl
 WHERE height IS NOT NULL;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS '키순위' 
     , name, height, addr
	   FROM userTbl
 WHERE height IS NOT NULL;

SELECT DENSE_RANK() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위' 
     , name, height, addr
	   FROM userTbl
 WHERE height IS NOT NULL;

 USE sqlDB;
 SELECT U.userid, U.name, B.prodName, U.addr, U.mobile1 + U,mobile2 AS [연락처]
  FROM userTbl U
  LEFT OUTER JOIN buyTbl B
