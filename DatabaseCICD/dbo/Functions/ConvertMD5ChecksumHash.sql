
CREATE FUNCTION dbo.ConvertMD5ChecksumHash  
(
	@value AS VARCHAR(32)
) RETURNS BIGINT AS BEGIN
	DECLARE @characters CHAR(36), @result BIGINT, @index SMALLINT;  
  
	-- initialize our charater set, our result, and the index  
	SELECT @characters = '0123456789abcdef',  
	@result = 0,  
	@index = 0;  
  
	-- while we have characters to convert, convert them and  
	-- prepend them to the result.  we start on the far right  
	-- and move to the left until we run out of digits.  the  
	-- conversion used is (index) * digit  
	WHILE @index < LEN(@value)  
	SELECT @result = @result + (@index+1) * (CHARINDEX(SUBSTRING(@value, LEN(@value) - @index, 1), @characters) - 1),  
			@index = @index + 1;

	RETURN @result;
END
