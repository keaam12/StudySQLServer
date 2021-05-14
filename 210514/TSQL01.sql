-- char는 고정길이, -- varchar는 가변길이
-- char는 지정한 위치를 맞춰주지만, varchar는 변형된다.

  -- 프로그래밍 시작

  USE sqlDB;
  GO

  DECLARE @myVar1 INT;
  DECLARE @myVar2 DECIMAL(5, 2);
  DECLARE @myVar3 NCHAR(20);
  DECLARE @inchUnit DECIMAL(4, 3);

  SET @myVar1 = 4000;
  SET @myVar2 = 3.14;
  SET @myVar3 = '가수 이름 ==>'
  SET @inchUnit = 0.393;

--
SELECT name, height * @inchUnit AS '키(inch)' FROM userTbl;

--  SELECT @myVar3 AS [string], name FROM	userTbl WHERE height > 180;