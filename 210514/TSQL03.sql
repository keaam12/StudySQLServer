-- ���ڿ� �Լ�
SELECT ASCII('z'), CHAR(47); -- ���� ��
SELECT UNICODE('��'), NCHAR(44035); -- ���� ��
SELECT UNICODE('�Ϻ���'), NCHAR(12359);
SELECT ASCII('�Ϻ���'), CHAR(170);


-- ���ڿ� ����
SELECT CONCAT('SQL', 'Server', 2019) AS [name]; -- ���� ߾
SELECT 'SQL' + 'server' + cast(2019 AS varchar);

-- �ܾ� ������ġ
SELECT CHARINDEX('world', 'Hello world!');
-- C#, java, python ���ڿ� 0���� ����
-- DB 1���� ����

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRTM // ���� ߾
SELECT LEFT('SQL Server 2019', 3), RIGHT('SQL Server 2019', 4);

SELECT SUBSTRING('���ѹα�����!', 4, 2);

SELECT LEN('Hello World');
SELECT LEN('���ѹα� ����');

SELECT LOWER('hELLO WORLD'), UPPER('hELLO World!');

SELECT UPPER ('cd2005');
.-- �����̽� ���� �Լ�
SELECT '      SQL', LTRIM('    SQL'); -- ��
SELECT '      SQL', RTRIM('    SQL         '); -- ��
SELECT '      SQL', TRIM('    SQL'); -- ߾

--Replace ��� �� ��߾
SELECT REPLACE('SQL Server 2019', 'server', '����');

--STR ���� ��
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT ���� ߾
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'
