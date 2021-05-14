--- 3개 테이블 내부조인

SELECT s.StdID, s.StdName
	 , r.ClubName
	 , c.ClubRoom, r.RegDate
  FROM StdTbl AS s
 INNER JOIN StdClubTbl AS r
    ON s.StdID = r.StdID
 INNER JOIN ClubTbl AS c
    ON c.ClubName = r.ClubName;