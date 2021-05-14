SELECT StdName, Region 
  FROM StdTbl

SELECT ClubName, ClubRoom 
  FROM ClubTbl

SELECT CAST(Id AS VARCHAR), StdID FROM StdClubTbl
UNION -- 데이터 타입이 일치해야 UNION 가능
SELECT ClubName, ClubRoom FROM ClubTbl

SELECT StdName, Region FROM StdTbl
UNION ALL -- 중복을 허용함, ALL 이 없으면 중복 제거되어서 나옴
SELECT StdName, Region FROM StdTbl

-- 뒤 테이블 기준 만족하는 것만 추려내는 것
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT -- 빼버린당
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL