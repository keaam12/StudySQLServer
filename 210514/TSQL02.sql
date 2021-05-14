-- �ý����Լ�(SQL������ �⺻���� �������ִ� �Լ���)

SELECT CAST(AVG(CAST(amount AS float)) AS decimal(5, 4)) AS [��հ�] FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('314.' AS float); -- ���ܹ߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT); -- �� ��ȯ�� ���ϸ� NULL�� �� ��ü ������ ����.

SELECT name, CAST(height AS varchar) + 'cm'  AS Ű FROM userTbl
 WHERE height IS NOT NULL; -- NULL ���� =���� �� X // IS(����), IS NOT(���� �ʴ�)

SELECT TRY_PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT PARSE('2021-5-14 10:28:10' AS DATETIME);

SELECT YEAR (GETDATE()); -- INSERT ���� ����Ͻú��� ���� ���� ���

 

SELECT YEAR (GETDATE()); -- INSERT ���� ����Ͻú��� ���� ���� ���
SELECT MONTH (GETDATE()); -- INSERT ���� ����Ͻú��� ���� ���� ���
SELECT DAY (GETDATE()); -- INSERT ���� ����Ͻú��� ���� ���� ���


-- ��ġ�Լ�
SELECT ABS(-100); --�����Լ�
SELECT ROUND(3.141592, 2);
SELECT ROUND(RAND(), 3);
SELECT @@SERVERNAME


-- ���Լ�
SELECT IIF(100 > 200, '��', '����');
