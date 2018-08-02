CREATE PROCEDURE AddUserToLock (@CreatedBy Varchar, @LockID INT, @UserID INT)
AS

BEGIN

    IF NOT EXISTS SELECT * FROM LockUser WHERE LockID= @LockID AND UserID = @UserID 
    THEN BEGIN
        INSERT INTO Lock (CreatedBy, Created, UpdatedBy, Updated, LockID, UserID)
        VALUES (@CreatedBy, DATETIME, @CreatedBy, DATETIME, @LockID, @UserID)
    END
END