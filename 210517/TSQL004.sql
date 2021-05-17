-- 1부터 100까지의 수를 반복하면서 7의 배수를 합산하지 않고 나머지만 합산

DECLARE @i INT, @hap BIGINT

SET @i = 0
SET @hap = 0

WHILE (@i <= 100)
BEGIN
	IF (@i % 7 = 0)
	BEGIN
		PRINT CONCAT('7의 배수 : ', @i)
		SET @i = @i + 1
		CONTINUE -- 탈출
	END
	SET @hap = @hap + @i
	SET @i = @i + 1; -- @i++

END

PRINT CONCAT('1~100 까지의 합 ==> ', @hap)