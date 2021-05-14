SELECT StdName, Region 
  FROM StdTbl

SELECT ClubName, ClubRoom 
  FROM ClubTbl

SELECT CAST(Id AS VARCHAR), StdID FROM StdClubTbl
UNION -- ������ Ÿ���� ��ġ�ؾ� UNION ����
SELECT ClubName, ClubRoom FROM ClubTbl

SELECT StdName, Region FROM StdTbl
UNION ALL -- �ߺ��� �����, ALL �� ������ �ߺ� ���ŵǾ ����
SELECT StdName, Region FROM StdTbl

-- �� ���̺� ���� �����ϴ� �͸� �߷����� ��
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT -- ��������
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL