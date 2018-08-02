CREATE PROCEDURE AddNewLock (@CreatedBy Varchar, @Name Varchar, @Description Varchar)
AS

BEGIN

IF NOT EXISTS SELECT * FROM Lock WHERE Name = @Name AND Description = @Description
    THEN BEGIN
        INSERT INTO Lock (CreatedBy, Created, UpdatedBy, Updated, Name, Description)
        VALUES (@CreatedBy, DATETIME, @CreatedBy, DATETIME, @Name, @Description)
    END
END