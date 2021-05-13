-- 데이터 조회
SELECT * FROM userTbl;

--데이터 조회 필터링
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 where NAME LIKE '%용%';

 --특정 테이블 레코드 갯수 확인
 SELECT COUNT(userID) FROM userTbl;

 -- 사용자 테이블에서 
 -- 키가 180 이상이고 출생년도가 1970 이후에 태어난 사람
 -- 의 아이디, 이름, 키를 조회하세요
 SELECT userID, name, height FROM userTbl
  WHERE height >= 180
    AND birthYear >= 1970;

	--출생년도순(오름차순)으로 정렬해서 조회
	SELECT * FROM userTbl
	 ORDER BY birthYear DESC; -- ASC(ENDING) || DESC(ENDING)

-- SELECT INTO
SELECT * INTO userTbl_New FROM userTbl;

SELECT * FROM userTbl_New;

SELECT userID, name, addr INTo userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;



