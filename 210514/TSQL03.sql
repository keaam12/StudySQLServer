-- 문자열 함수
SELECT ASCII('z'), CHAR(47); -- 사용빈도 下
SELECT UNICODE('가'), NCHAR(44035); -- 사용빈도 下
SELECT UNICODE('일본어'), NCHAR(12359);
SELECT ASCII('일본어'), CHAR(170);


-- 문자열 연결
SELECT CONCAT('SQL', 'Server', 2019) AS [name]; -- 사용빈도 上
SELECT 'SQL' + 'server' + cast(2019 AS varchar);

-- 단어 시작위치
SELECT CHARINDEX('world', 'Hello world!');
-- C#, java, python 문자열 0부터 시작
-- DB 1부터 시작

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRTM // 사용빈도 上
SELECT LEFT('SQL Server 2019', 3), RIGHT('SQL Server 2019', 4);

SELECT SUBSTRING('대한민국만세!', 4, 2);

SELECT LEN('Hello World');
SELECT LEN('대한민국 만세');

SELECT LOWER('hELLO WORLD'), UPPER('hELLO World!');

SELECT UPPER ('cd2005');
.-- 스페이스 제거 함수
SELECT '      SQL', LTRIM('    SQL'); -- 中
SELECT '      SQL', RTRIM('    SQL         '); -- 中
SELECT '      SQL', TRIM('    SQL'); -- 上

--Replace 사용 빈도 崔上
SELECT REPLACE('SQL Server 2019', 'server', '서버');

--STR 사용빈도 下
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT 사용빈도 上
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'
