CREATE PROCEDURE SubmitClass
@Title varchar(50),
@Des varchar(max),
@Duration int,
@level int

AS BEGIN

INSERT Class
VALUES (@Title, @Des, @Duration, @level, 1, -1)

END

