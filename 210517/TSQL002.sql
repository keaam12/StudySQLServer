-- CASE 구문
DECLARE @point INT, @credit CHAR(1)
SET @point = 100

SET @credit =
CASE
	WHEN (@point >= 90) THEN 'A'
	WHEN (@point >= 80) THEN 'B'
	WHEN (@point >= 70) THEN 'C'
	WHEN (@point >= 60) THEN 'D'
	ELSE 'F'
END

PRINT CONCAT('취득점수 ==> ', + @point)
PRINT CONCAT('학점 ==> ', + @credit) -- CASE문 활용 CASE 시작  - WHEN 조건 - THEN 결과 