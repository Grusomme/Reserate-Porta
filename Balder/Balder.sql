CREATE DATABASE Balder;

-- Not sure how we wanna deal with passwords yet, so not putting anything in at the moment. 

CREATE TABLE Lock (
    Created_By int (20) NOT NULL,
    Created DATETIME NOT NULL,
    Updated_By int (20) NOT NULL,
    Updated DATETIME NOT NULL,
    ID int (20) UNIQUE NOT NULL,
    Name VARCHAR (255),
    Description VARCHAR (255),
    PRIMARY KEY (ID),
    FOREIGN KEY (Created_By) REFERENCES User(ID),
    FOREIGN KEY (Updated_By) REFERENCES User(ID)

);

CREATE TABLE User (
    Created_By int (20) NOT NULL,
    Created DATETIME NOT NULL,
    Updated_By int (20) NOT NULL,
    Updated DATETIME NOT NULL,
    ID int (20) UNIQUE NOT NULL,
    Name VARCHAR (50) NOT NULL,
    Lastname VARCHAR (50) NOT NULL,
    Phone int (8) NOT NULL,
    Email VARCHAR (80),
    PRIMARY KEY (ID),
    FOREIGN KEY (Created_By) REFERENCES User(ID),
    FOREIGN KEY (Updated_By) REFERENCES User(ID)

);

CREATE TABLE LockUser (
    Created_By int (20) NOT NULL,
    Created DATETIME NOT NULL,
    Updated_By int (20) NOT NULL,
    Updated DATETIME NOT NULL,
    ID int (20) UNIQUE NOT NULL,
    User_ID int (20) NOT NULL,
    Lock_ID int (20) NOT NULL
    PRIMARY KEY (ID),
    FOREIGN KEY (Lock_ID) REFERENCES Lock(ID),
    FOREIGN KEY (User_ID) REFERENCES User(ID)
    FOREIGN KEY (Created_By) REFERENCES User(ID),
    FOREIGN KEY (Updated_By) REFERENCES User(ID)

)



CREATE TABLE Locking_History (
    Created_By int (20) NOT NULL,
    Created DATETIME NOT NULL,
    Entry_Number int (20) AUTO_INCREMENT,
    User_ID int (20) NOT NULL,
    Action VARCHAR(255) NOT NULL,
    PRIMARY KEY (Entry_Number),
    FOREIGN KEY (Created_By) REFERENCES User(ID)
    FOREIGN KEY (User_ID) REFERENCES User(ID)

);

CREATE TABLE Logging_History (
    Created_By int (20) NOT NULL,
    Created DATETIME NOT NULL,
    Entry_Number int (20) AUTO_INCREMENT,
    Action VARCHAR(255) NOT NULL,
    User_ID int (20) NOT NULL,
    PRIMARY KEY (Entry_Number),
    FOREIGN KEY (Created_By) REFERENCES User(ID)
    FOREIGN KEY (User_ID) REFERENCES User(ID)
    -- Eventuelt logge IP til folk som logger eller prøver å logge seg på. 
);