-- �ܺ�����
-- �츮 ���θ����� ������ �ѹ��� �������� ���� ȸ������ ��ȸ
SELECT u.userID, u.name
	 , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID


 -- �л� / ���Ƹ� / �������� ���̺�
 -- OUTERJOIN
 SELECT s.StdID, s.StdName, s.Region
	  , r.ClubName,  c.ClubRoom
	  , r.RegDate
   FROM StdTbl AS s
  INNER JOIN StdClubTbl AS r
     ON s.StdID = r.StdID
  INNER JOIN ClubTbl AS c
     ON c.ClubName = r.ClubName


	  SELECT s.StdID, s.StdName, s.Region
	  , r.ClubName
	  , r.RegDate
   FROM StdTbl AS s
  INNER JOIN StdClubTbl AS r
     ON s.StdID = r.StdID


SELECT c.ClubName, c.ClubRoom, r.Id, r.RegDate 
  FROM ClubTbl AS c


  LEFT OUTER JOIN StdClubTbl AS r
    ON c.ClubName = r.ClubName

