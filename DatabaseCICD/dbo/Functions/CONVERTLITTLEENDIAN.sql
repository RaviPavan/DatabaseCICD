
CREATE FUNCTION dbo.CONVERTLITTLEENDIAN(
	@value AS VARBINARY(8000)
) RETURNS VARBINARY(8000) AS
BEGIN
	DECLARE @result VARBINARY (8000)
	DECLARE @delta VARBINARY(2)
	WHILE (LEN(@value) > 0)
	BEGIN
		SET @delta = @value & 65535

		IF(@result is null)
			SET @result = CONVERT(VARBINARY(2), REVERSE(@delta))
		ELSE
			SET @result = CONVERT(VARBINARY(2), REVERSE(@delta)) + @result

		SET @value = SUBSTRING((@value),0, LEN(@value) - (LEN(@delta) - 1))
	END
	RETURN @result
END
