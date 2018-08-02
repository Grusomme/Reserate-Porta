CREATE PROCEDURE AddNewUser (@CreatedBy VARCHAR, @Name VARCHAR, @Lastname VARCHAR, @Phone INT, Email VARCHAR )
AS

BEGIN

IF NOT EXISTS SELECT * FROM User WHERE Name = @Name AND Lastname = @Lastname
    THEN BEGIN
        INSERT INTO User (CreatedBy, Created, UpdatedBy, Updated, Name, Lastname, Phone, Email)
        VALUES (@CreatedBy, DATETIME, @CreatedBy, DATETIME, @Name, @Lastname, @Phone, @Email)
    END
END