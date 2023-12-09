CREATE DATABASE [Casino];
USE [Casino];

CREATE TABLE [Card]
(
    [GameDate] DATE,
    [WinnerSum] DECIMAL(18, 2),
    [GameDescription] NVARCHAR(90),
    [Weight] FLOAT,
    [CountOfGamePlaces] TINYINT
);

INSERT INTO [Card] ([GameDate], [WinnerSum], [GameDescription], [Weight], [CountOfGamePlaces])
VALUES
('2020-01-05', 100, 'Monkey Jump', 300, 2);

EXEC sp_rename 'Card', 'Automate';

TRUNCATE TABLE [Automate];

DROP TABLE [Automate];

CREATE TABLE [Automate]
(
    [Id] INT PRIMARY KEY IDENTITY,
    [GameDate] DATE,
    [WinnerSum] DECIMAL(18, 2) NOT NULL CHECK([WinnerSum] > 1 AND [WinnerSum] <= 1000000),
    [GameDescription] NVARCHAR(90) NOT NULL,
    [Weight] FLOAT NOT NULL,
    [CountOfGamePlaces] TINYINT NOT NULL
);

INSERT INTO [Automate] ([GameDate], [WinnerSum], [GameDescription], [Weight], [CountOfGamePlaces])
VALUES
('2020-01-05', 100, 'Monkey Jump', 380, 2);

SELECT * FROM [Automate];
