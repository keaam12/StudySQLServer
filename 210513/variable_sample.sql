-- char는 고정길이, -- varchar는 가변길이
-- char는 지정한 위치를 맞춰주지만, varchar는 변형된다.

  -- 프로그래밍 시작

  DECLARE @varAge INT;
  SET @varAge = 44;

  SELECT @varAge AS '나이'; 