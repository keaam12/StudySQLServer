-- 시스템함수(SQL서버가 기본으로 제공해주는 함수들)

SELECT CAST(AVG(CAST(amount AS float)) AS decimal(5, 4)) AS [평균값] FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('314.' AS float); -- 예외발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT); -- 값 변환을 못하면 NULL로 갑 대체 정상적 수행.

SELECT name, CAST(height AS varchar) + 'cm'  AS 키 FROM userTbl
 WHERE height IS NOT NULL; -- NULL 값은 =으로 비교 X // IS(같다), IS NOT(같지 않다)

SELECT TRY_PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT PARSE('2021-5-14 10:28:10' AS DATETIME);

SELECT YEAR (GETDATE()); -- INSERT 현재 년월일시분초 제일 많이 사용

 

SELECT YEAR (GETDATE()); -- INSERT 현재 년월일시분초 제일 많이 사용
SELECT MONTH (GETDATE()); -- INSERT 현재 년월일시분초 제일 많이 사용
SELECT DAY (GETDATE()); -- INSERT 현재 년월일시분초 제일 많이 사용


-- 수치함수
SELECT ABS(-100); --절대함수
SELECT ROUND(3.141592, 2);
SELECT ROUND(RAND(), 3);
SELECT @@SERVERNAME


-- 논리함수
SELECT IIF(100 > 200, '참', '거짓');
