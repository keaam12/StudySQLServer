-- char�� ��������, -- varchar�� ��������
-- char�� ������ ��ġ�� ����������, varchar�� �����ȴ�.

  -- ���α׷��� ����

  USE sqlDB;
  GO

  DECLARE @myVar1 INT;
  DECLARE @myVar2 DECIMAL(5, 2);
  DECLARE @myVar3 NCHAR(20);
  DECLARE @inchUnit DECIMAL(4, 3);

  SET @myVar1 = 4000;
  SET @myVar2 = 3.14;
  SET @myVar3 = '���� �̸� ==>'
  SET @inchUnit = 0.393;

--
SELECT name, height * @inchUnit AS 'Ű(inch)' FROM userTbl;

--  SELECT @myVar3 AS [string], name FROM	userTbl WHERE height > 180;