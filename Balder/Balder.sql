CREATE DATABASE Balder;

-- Not sure how we wanna deal with passwords yet, so not putting anything in at the moment. 

CREATE TABLE Lock (
    CreatedBy int (20) NOT NULL,
    Created DATETIME NOT NULL,
    UpdatedBy int (20) NOT NULL,
    Updated DATETIME NOT NULL,
    ID int (20) UNIQUE NOT NULL AUTO_INCREMENT,
    Name VARCHAR (255),
    Description VARCHAR (255),
    PRIMARY KEY (ID),
    FOREIGN KEY (CreatedBy) REFERENCES User(ID),
    FOREIGN KEY (UpdatedBy) REFERENCES User(ID)

);

CREATE TABLE User (
    CreatedBy int (20) NOT NULL,
    Created DATETIME NOT NULL,
    UpdatedBy int (20) NOT NULL,
    Updated DATETIME NOT NULL,
    ID int (20) UNIQUE NOT NULL AUTO_INCREMENT,
    Name VARCHAR (50) NOT NULL,
    Lastname VARCHAR (50) NOT NULL,
    Phone int (8) NOT NULL,
    Email VARCHAR (80),
    PRIMARY KEY (ID),
    FOREIGN KEY (CreatedBy) REFERENCES User(ID),
    FOREIGN KEY (UpdatedBy) REFERENCES User(ID)

);


-- Gonna remake to make UserID + LockID as Prim key so we dont get replicas.
CREATE TABLE LockUser (
    CreatedBy int (20) NOT NULL,
    Created DATETIME NOT NULL,
    UpdatedBy int (20) NOT NULL,
    Updated DATETIME NOT NULL,
    ID int (20) UNIQUE NOT NULL AUTO_INCREMENT,
    UserID int (20) NOT NULL,
    LockID int (20) NOT NULL
    PRIMARY KEY (ID),
    FOREIGN KEY (LockID) REFERENCES Lock(ID),
    FOREIGN KEY (UserID) REFERENCES User(ID)
    FOREIGN KEY (CreatedBy) REFERENCES User(ID),
    FOREIGN KEY (UpdatedBy) REFERENCES User(ID)

)



CREATE TABLE LockingHistory (
    CreatedBy int (20) NOT NULL,
    Created DATETIME NOT NULL,
    EntryNumber int (20) AUTO_INCREMENT,
    UserID int (20) NOT NULL,
    Action VARCHAR(255) NOT NULL,
    PRIMARY KEY (EntryNumber),
    FOREIGN KEY (CreatedBy) REFERENCES User(ID)
    FOREIGN KEY (UserID) REFERENCES User(ID)

);

CREATE TABLE LoggingHistory (
    CreatedBy int (20) NOT NULL,
    Created DATETIME NOT NULL,
    EntryNumber int (20) AUTO_INCREMENT,
    Action VARCHAR(255) NOT NULL,
    UserID int (20) NOT NULL,
    PRIMARY KEY (EntryNumber),
    FOREIGN KEY (CreatedBy) REFERENCES User(ID)
    FOREIGN KEY (UserID) REFERENCES User(ID)
    -- Eventuelt logge IP til folk som logger eller prøver å logge seg på. 
);