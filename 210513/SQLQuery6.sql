SELECT COUNT(*) FROM buyTbl;

-- DISTINCT (중복제거)
SELECT DISTINCT addr FROM userTbl;

--TOP
USE AdventureWorksLT2019;
GO

SELECT TOP 10 * FROM SalesLT.Customer
ORDER BY CustomerID DESC;

SELECT TOP (10) PERCENT *
FROM SalesLT.Customer
ORDER BY CustomerID DESC;

-- 10% 샘플링 결과 조회 어따쓰냐
SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);

SELECT * FROM SalesLT.Customer
ORDER BY FirstName
OFFSET 5 ROW
FETCH NEXT 3 ROWS ONLY;   -- 프로시저/함수

