USE sqlDB
Go

SELECT * FROM userTbl
 WHERE userID = 'kkh';
 -- 사용자 테이블에서 출생년도 1970에서 1980년 사이이고 키가 180 이상인 사람을 조회하세요.
 SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND birthYear <= 1980	
  AND  height >= 180;

  -- 출생년도가 1970년 이후이거나 키가 182이상인 사람 조회
  SELECT * FROM userTbl
  WHERE birthYear >= 1970 OR height >= 182;

  SELECT * FROM userTbl
  WHERE birthYear BETWEEN 1970 AND 1980 AND height >= 180;

  -- 사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
  SELECT [name], userID, addr FROM userTbl
  WHERE addr = '경남' OR addr = '전남' OR addr = '경북';
  
  SELECT [name], userID, addr FROM userTbl
   WHERE addr IN ('경남', '경북', '전남');


   -- LIKE 절(문자열에서 속하는 문자열이 있는 (contain))

   SELECT name, height, addr FROM userTbl
    WHERE name LIKE '%용%';

	-- SubQuery
	-- 키가 175보다 큰 사람들 조회
	SELECT * FROM userTbL
	WHERE height > 175;

	-- 김경호보다 키가 큰 사람을 조회
	SELECT * FROM userTbl
	WHERE height > (SELECT height FROM userTbl WHERE name = '김경호');
	-- 경남에 사는 사람들보다 키가 큰 사람들 조회
		SELECT * FROM userTbl
	WHERE height = ANY (SELECT height FROM userTbl WHERE addr = '경남');

	-- ANY와 IN은 서브쿼리에서 나온 겨로가만 일치하는 결과만 조회

	--ORDERBY
	SELECT * FROM userTbl
	 ORDER BY addr DESC, birthYear DESC;