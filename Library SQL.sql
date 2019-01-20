CREATE DATABASE Library

---------------------------------------------------------TABLES ---------------------------------------------------------
Create Table BOOK
	(BookID int NOT NULL, Title varchar(60) Null, PublisherName varchar(50) NOT NULL)
GO
Create Table Book_Authors
	(BookID int NOT NULL, AuthorName varchar(30) Null)
GO
Create Table Publisher
	(PublisherName varchar(50) NOT NULL, Address varchar(50), Phone varchar(10))
GO
Create Table Book_Copies
	(BookID int NOT NULL, BranchID int NOT NULL, No_Of_Copies Int Null)
GO
Create Table Book_Loans
	(BookID int NOT NULL, BranchID int NOT NULL, CardNO int NOT NULL, DateOut varchar(10) NULL, DueDate varchar(10) NULL)
GO
Create Table Library_Branch
	(BranchID int NOT NULL, BranchName varchar(30) NULL, Address varchar(50) NULL)
GO
Create Table Borrower
	(CardNO int NOT NULL, Name varchar(20) NULL, Address varchar(50) NULL, Phone varchar(10) NULL)

GO
--------------------------------------------------------------- ADD BOOK
Create Procedure AddBook
	@BookID int,
	@Title varchar(60),
	@PublisherName varchar(50)
AS
INSERT INTO Book (BookID, Title, PublisherName)
VALUES (@BookID, @Title, @PublisherName)
GO
--------------------------------------------------------------- ADD AUTHOR
Create Procedure AddAuthor
	@BookID int,
	@AuthorName varchar(30)
AS
INSERT INTO Book_authors (BookID, AuthorName)
VALUES (@BookID, @AuthorName)
GO
--------------------------------------------------------------- ADD PUBLISHER
Create Procedure AddPublisher
	@PublisherName varchar(50),
	@PubAddress varchar(50),
	@Phone varchar(10)
AS
INSERT INTO Publisher (PublisherName, Address, Phone)
VALUES (@PublisherName, @PubAddress, @Phone)
GO
--------------------------------------------------------------- ADD BOOK COPIES
Create Procedure AddCopies
	@BookID int,
	@BranchID int,
	@No_Of_Copies int
AS
INSERT INTO Book_Copies (BookID,BranchID,No_Of_Copies)
VALUES (@BookID, @BranchID, @No_Of_Copies)
GO
--------------------------------------------------------------- ADD BOOK LOANS
Create Procedure AddLoans
	@BookID int,
	@BranchID int,
	@CardNO int,
	@DateOut varchar(10),
	@DueDate varchar(10)
AS
INSERT INTO Book_Loans (BookID, BranchID, CardNO, DateOut, DueDate)
VALUES (@BookID, @BranchID, @CardNO, @DateOut, @DueDate)
GO
--------------------------------------------------------------- ADD LIBRARY BRANCH
Create Procedure AddBranch
	@BranchID int,
	@BranchName varchar(30),
	@Address varchar(50)
AS
INSERT INTO Library_Branch (BranchID, BranchName, Address)
VALUES (@BranchID, @BranchName, @Address)
GO
--------------------------------------------------------------- ADD BORROWER
Create Procedure AddBorrow
	@CardNO int,
	@Name varchar(20),
	@Address varchar(50),
	@Phone varchar(10)
AS
INSERT INTO Borrower (CardNO, Name, Address, Phone)
VALUES (@CardNO, @Name, @Address, @Phone)
GO
------1------ BRANCHES
EXECUTE AddBranch 100, 'CopedBanana', '321 BocaBacana'
EXECUTE AddBranch 101, 'Sharpstown', '7302 EdGy aLLeY'
EXECUTE AddBranch 102, 'Central', '555 Central St.'
EXECUTE AddBranch 103, 'US Government', '32 White House'
EXECUTE AddBranch 104, 'IndieScene', NULL
EXECUTE AddBranch 105, 'JayZ', 'Paris'
GO
------2------
EXECUTE AddPublisher 'Britain', '444 English St.', '452-8643'
EXECUTE AddPublisher 'FG Inc', 'Melancholy Hill', NULL
EXECUTE AddPublisher 'Kathy', 'Mills Avenue', NULL
EXECUTE AddPublisher 'LP', '6 Minutes Dr', '233-5731'
EXECUTE AddPublisher 'US Publications', 'Freedom Ave', NULL
EXECUTE AddPublisher 'Northwest', '312 North Rd.', NULL
EXECUTE AddPublisher 'Lola', '123 Copacabana', '999-9999'
GO
------3------
EXECUTE AddBook 1,'The Lost Tribe', 'Lola'
EXECUTE AddAuthor 1, 'Stephen King'
EXECUTE AddCopies 1, 100, 3
EXECUTE AddCopies 1, 101, 3
EXECUTE AddCopies 1, 102, 3
EXECUTE AddCopies 1, 103, 3
GO
EXECUTE AddBook 2, 'Till I Collapse - Workout Guide', 'LP'
EXECUTE AddAuthor 2, 'Marshall Mathers'
EXECUTE AddCopies 2, 105, 30
EXECUTE AddCopies 2, 104, 12
EXECUTE AddCopies 2, 103, 3
EXECUTE AddCopies 2, 102, 32
GO
EXECUTE AddBook 3, 'This Year - In Review', 'Kathy'
EXECUTE AddAuthor 3, 'The Mountain Goats'
EXECUTE AddCopies 3, 104, 12
EXECUTE AddCopies 3, 103, 14
EXECUTE AddCopies 3, 102, 15
EXECUTE AddCopies 3, 101, 24
GO
EXECUTE AddBook 4, 'Clint Eastwood - Bio', 'FG Inc'
EXECUTE AddAuthor 4, 'The Gorillaz'
EXECUTE AddCopies 4, 100, 4
EXECUTE AddCopies 4, 101, 2
EXECUTE AddCopies 4, 102, 4
EXECUTE AddCopies 4, 103, 2
EXECUTE AddCopies 4, 104, 7
EXECUTE AddCopies 4, 105, 10
GO
EXECUTE AddBook 5, 'Knee Socks - Fashion', 'Britain'
EXECUTE AddAuthor 5, 'The Artic Monkeys'
EXECUTE AddCopies 5, 103, 7
EXECUTE AddCopies 5, 105, 7
EXECUTE AddCopies 5, 100, 7
GO
EXECUTE AddBook 6, 'Cabinet Battle #1', 'US Publications'
EXECUTE AddAuthor 6, 'Alexander Hamilton'
EXECUTE AddCopies 6, 100, 6
EXECUTE AddCopies 6, 102, 3
EXECUTE AddCopies 6, 103, 9
EXECUTE AddCopies 6, 104, 12
GO
EXECUTE AddBook 7, 'Ltl Black Submarines', 'LP'
EXECUTE AddAuthor 7, 'The Black Keys'
EXECUTE AddCopies 7, 101, 13
GO
EXECUTE AddBook 8, 'No Children - Parenting', 'Kathy'
EXECUTE AddAuthor 8, 'The Mountain Goats'
EXECUTE AddCopies 8, 104, 11
EXECUTE AddCopies 8, 105, 12
GO
EXECUTE AddBook 9, 'Stronger - Workout', 'Northwest'
EXECUTE AddAuthor 9, 'Kanye West'
EXECUTE AddCopies 9, 102, 3
EXECUTE AddCopies 9, 100, 30
EXECUTE AddCopies 9, 101, 30
EXECUTE AddCopies 9, 103, 3
GO
EXECUTE AddBook 10, 'POWER - Politics', 'Northwest'
EXECUTE AddAuthor 10, 'Kanye West'
EXECUTE AddCopies 10, 100, 30
GO
EXECUTE AddBook 11, 'Intro - Writing Guide', 'Kathy'
EXECUTE AddAuthor 11, 'The XX'
EXECUTE AddCopies 11, 100, 2 
EXECUTE AddCopies 11, 101, 3 
EXECUTE AddCopies 11, 102, 4 
EXECUTE AddCopies 11, 103, 5 
EXECUTE AddCopies 11, 104, 6
EXECUTE AddCopies 11, 105, 7  
GO
EXECUTE AddBook 12, 'Feel Good Inc - Motivation', 'FG Inc'
EXECUTE AddAuthor 12, 'The Gorillaz'
EXECUTE AddCopies 12, 100, 5
EXECUTE AddCopies 12, 101, 7
EXECUTE AddCopies 12, 102, 9
EXECUTE AddCopies 12, 103, 11
EXECUTE AddCopies 12, 104, 9
EXECUTE AddCopies 12, 105, 7
GO
EXECUTE AddBook 13, 'Do I Wanna Know? - Religious', 'LP'
EXECUTE AddAuthor 13, 'The Artic Monkeys'
EXECUTE AddCopies 13, 101, 31
GO
EXECUTE AddBook 14, 'Gold Digger - History of 49', 'Northwest'
EXECUTE AddAuthor 14, 'Kanye West'
EXECUTE AddCopies 14, 102, 12
EXECUTE AddCopies 14, 104, 12
EXECUTE AddCopies 14, 105, 12
EXECUTE AddCopies 14, 100, 12
Go
EXECUTE AddBook 15, 'Dog Problems - Pet Help', 'US Publications'
EXECUTE AddAuthor 15, 'The Format'
EXECUTE AddCopies 15, 101, 4
EXECUTE AddCopies 15, 100, 7
EXECUTE AddCopies 15, 104, 9
EXECUTE AddCopies 15, 105, 2
GO
EXECUTE AddBook 16, 'Monster - Fiction', 'Britain'
EXECUTE AddAuthor 16, 'Marshall Mathers'
EXECUTE AddCopies 16, 102, 23
EXECUTE AddCopies 16, 103, 30
EXECUTE AddCopies 16, 104, 3
GO
EXECUTE AddBook 17, 'Pompeii - Travel Guide', 'Britain'
EXECUTE AddAuthor 17, 'Bastille'
EXECUTE AddCopies 17, 100, 2
EXECUTE AddCopies 17, 101, 9
EXECUTE AddCopies 17, 102, 29
EXECUTE AddCopies 17, 103, 2
EXECUTE AddCopies 17, 104, 9
EXECUTE AddCopies 17, 105, 9
Go
EXECUTE AddBook 18, 'Chop Suey - Cooking Guide', 'LP'
EXECUTE AddAuthor 18, 'System of a Down'
EXECUTE AddCopies 18, 105, 4
EXECUTE AddCopies 18, 104, 7
EXECUTE AddCopies 18, 103, 4
EXECUTE AddCopies 18, 102, 3
EXECUTE AddCopies 18, 101, 2
GO
EXECUTE AddBook 19, 'Cabinet Battle #2', 'US Publications'
EXECUTE AddAuthor 19, 'Alexander Hamilton'
EXECUTE AddCopies 19, 100, 2
EXECUTE AddCopies 19, 101, 4
EXECUTE AddCopies 19, 102, 8
EXECUTE AddCopies 19, 103, 16
EXECUTE AddCopies 19, 104, 32
EXECUTE AddCopies 19, 105, 16
GO
EXECUTE AddBook 20, 'S.O.B. - Self-Help', 'FG Inc'
EXECUTE AddAuthor 20, 'Nathaniel Rateliff'
EXECUTE AddCopies 20, 105, 12
EXECUTE AddCopies 20, 101, 15
EXECUTE AddCopies 20, 104, 7
GO
------Loans------ id name add phone
EXECUTE AddBorrow 1, 'Steve', '1 st', 1111111
EXECUTE AddBorrow 2, 'John', '2 st', 2222222
EXECUTE AddBorrow 3, 'Ryan', '3 st', 3333333
EXECUTE AddBorrow 4, 'Sally', '4 st', 4444444
EXECUTE AddBorrow 5, 'Joanna', '5 st', 5555555
EXECUTE AddBorrow 6, 'Jefferson', '6 st', 6666666
EXECUTE AddBorrow 7, 'Hwong', '7 st', 7777777
EXECUTE AddBorrow 8, 'Ryu', '8 st', 8888888
EXECUTE AddBorrow 9, 'Ken', '9 st', 9999999
EXECUTE AddBorrow 10, 'Guile', '10 st', 1010101
EXECUTE AddBorrow 11, 'Birdie', '11 st', 1212121
EXECUTE AddBorrow 12, 'Rashid', '12 st', 1313131
EXECUTE AddBorrow 13, 'Mauricio', '13 st', 1414141
EXECUTE AddBorrow 14, 'Mira', '14 st', 1515151
EXECUTE AddBorrow 15, 'Jessica', '15 st', 1616161
EXECUTE AddBorrow 16, 'Grace', '16 st', 1717171
EXECUTE AddBorrow 17, 'Rey', '17 st', 1818181
EXECUTE AddBorrow 18, 'Sarah', '18 st', 1919191
EXECUTE AddBorrow 19, 'Brittney', '19 st', 2020202
EXECUTE AddBorrow 20, 'Justin', '20 st', 212121
EXECUTE AddBorrow 21, 'Tyler', '21 st', 2323232
EXECUTE AddBorrow 22, 'Peter', '22 st', 2424242
EXECUTE AddBorrow 23, 'Jackson', '23 st', 2525252
EXECUTE AddBorrow 24, 'Mia', '24 st', 2626262
EXECUTE AddBorrow 25, 'Triss', '25 st', 2727272
EXECUTE AddBorrow 26, 'Seth', '26 st', 2828282
EXECUTE AddBorrow 27, 'Jenny', '27 st', 2929292
EXECUTE AddBorrow 28, 'Baek', '28 st', 3030303
EXECUTE AddBorrow 29, 'Oliver', '29 st', 3131313
EXECUTE AddBorrow 30, 'Amy', '30 st', 3232323
EXECUTE AddBorrow 31, 'Jimmy', '31 st', 3434343
EXECUTE AddBorrow 32, 'Peyton', '32 st', 3535353
EXECUTE AddBorrow 33, 'Eli', '33 st', 3636363
GO
------Borrowers------
EXECUTE AddLoans 1, 100, 1, Null, Null
EXECUTE AddLoans 1, 100, 2, Null, Null
EXECUTE AddLoans 1, 102, 3, Null, Null
EXECUTE AddLoans 1, 105, 4, Null, Null
EXECUTE AddLoans 1, 104, 5, Null, Null
EXECUTE AddLoans 1, 104, 6, Null, Null
EXECUTE AddLoans 1, 102, 7, Null, Null
EXECUTE AddLoans 1, 101, 8, Null, 'Today'
EXECUTE AddLoans 1, 103, 9, Null, Null
EXECUTE AddLoans 1, 105, 10, Null, Null
EXECUTE AddLoans 1, 103, 11, Null, Null
EXECUTE AddLoans 1, 102, 12, Null, Null
EXECUTE AddLoans 1, 105, 13, Null, Null
EXECUTE AddLoans 1, 103, 14, Null, Null
EXECUTE AddLoans 1, 102, 15, Null, Null
EXECUTE AddLoans 2, 101, 16, Null, Null
EXECUTE AddLoans 2, 100, 2, Null, Null
EXECUTE AddLoans 2, 105, 4, Null, Null
EXECUTE AddLoans 2, 104, 6, Null, Null
EXECUTE AddLoans 2, 102, 7, Null, Null
EXECUTE AddLoans 3, 102, 3, Null, Null
EXECUTE AddLoans 3, 104, 6, Null, Null
EXECUTE AddLoans 3, 104, 17, Null, Null
EXECUTE AddLoans 3, 104, 1, Null, Null
EXECUTE AddLoans 3, 100, 2, Null, Null
EXECUTE AddLoans 3, 105, 18, Null, Null
EXECUTE AddLoans 3, 103, 5, Null, Null
EXECUTE AddLoans 4, 105, 9, Null, Null
EXECUTE AddLoans 4, 103, 20, Null, Null
EXECUTE AddLoans 4, 105, 19, Null, Null
EXECUTE AddLoans 4, 102, 3, Null, Null
EXECUTE AddLoans 4, 103, 11, Null, Null
EXECUTE AddLoans 4, 104, 5, Null, Null
EXECUTE AddLoans 4, 104, 21, Null, Null
EXECUTE AddLoans 4, 100, 2, Null, Null
EXECUTE AddLoans 4, 100, 22, Null, Null
EXECUTE AddLoans 5, 102, 3, Null, Null
EXECUTE AddLoans 6, 101, 23, Null, 'Today'
EXECUTE AddLoans 7, 101, 23, Null, Null
EXECUTE AddLoans 8, 101, 23, Null, Null
EXECUTE AddLoans 8, 101, 24, Null, Null
EXECUTE AddLoans 8, 103, 9, Null, Null
EXECUTE AddLoans 8, 104, 5, Null, Null
EXECUTE AddLoans 8, 102, 7, Null, Null
EXECUTE AddLoans 8, 102, 3, Null, Null
EXECUTE AddLoans 8, 103, 4, Null, Null
EXECUTE AddLoans 8, 102, 3, Null, Null
EXECUTE AddLoans 9, 104, 25, Null, Null
EXECUTE AddLoans 10, 105, 26, Null, Null
EXECUTE AddLoans 11, 103, 27, Null, Null
EXECUTE AddLoans 12, 101, 28, Null, Null
EXECUTE AddLoans 13, 100, 2, Null, Null
EXECUTE AddLoans 14, 101, 29, Null, Null
EXECUTE AddLoans 14, 104, 30, Null, Null
EXECUTE AddLoans 17, 105, 31, Null, Null
GO


--------------------------------Queries-----------------------------------
--1--
USE Library
SELECT 
	B.BookID, 
	B.Title, 
	bc.BranchID, 
	bc.No_Of_Copies, 
	lb.BranchName
FROM BOOK AS b
	INNER JOIN Book_copies AS bc
		on b.BookID = bc.BookID
	INNER JOIN Library_Branch AS lb
		on bc.BranchID = Lb.BranchID
WHERE Title LIKE 'The Lost Tribe'
AND BranchName LIKE 'Sharpstown'
GO
--2--
SELECT 
	B.BookID, 
	B.Title, 
	bc.BranchID, 
	bc.No_Of_Copies, 
	lb.BranchName
INTO #BookToBranch
FROM BOOK AS b
	INNER JOIN Book_copies AS bc
		on b.BookID = bc.BookID
	INNER JOIN Library_Branch AS lb
		on bc.BranchID = Lb.BranchID
GO
SELECT 
	Title, 
	BranchName, 
	SUM(No_of_copies) AS TotalOwned 
FROM #BookToBranch
WHERE Title = 'The Lost Tribe'
GROUP BY Title, BranchName
GO
--3--
SELECT *
FROM Borrower as Bo
	LEFT OUTER JOIN Book_Loans as BL
	 on Bo.CardNO LIKE BL.CardNO
	 WHERE BL.CardNO is NULL
GO
--4--
SELECT DISTINCT 
	b.BookID, 
	BL.BranchID, 
	BL.DueDate, 
	LB.BranchName, 
	b.Title, 
	Bo.Name, 
	Bo.Address
FROM Book_Loans as BL
	INNER JOIN Library_Branch as LB
		on BL.BranchID = LB.BranchID
	INNER JOIN Book as b
		on b.BookID = BL.BookID
	INNER JOIN Borrower as Bo
		on bo.CardNO = BL.CardNO
WHERE DueDate = 'Today'
GO
--5--
SELECT 
	LB.BranchName, 
	Count(BL.BranchID) as #LoanedOut
FROM Library_Branch as LB
	INNER JOIN Book_Loans as BL
		on LB.BranchID = BL.BranchID
GROUP BY LB.BranchName
GO
--6--
SELECT DISTINCT
	bo.CardNO, 
	bo.Name, 
	bo.Address, 
	Count(DISTINCT BL.BookID) as NumBooks
FROM Borrower as bo
	INNER JOIN Book_Loans as BL
		on bo.CardNO = BL.CardNO
	INNER JOIN Book_Copies as BC
		on Bl.BookID = bc.BookID

GROUP BY bo.CardNO, bo.Name, bo.Address 
HAVING Count(DISTINCT BL.BookID) > 4;
GO
--7--
SELECT DISTINCT 
	b.BookID,
	b.Title,
	BA.AuthorName,
	Bc.No_Of_Copies,
	LB.BranchName,
	LB.BranchID
FROM BOOK as b
	INNER JOIN Book_Authors as BA
	on b.BookID = BA.BookID
	INNER JOIN Book_Copies as BC
	on bc.BookID = b.BookID
	INNER JOIN Library_Branch as LB
	on bc.BranchID = LB.BranchID
WHERE AuthorName LIKE 'Stephen King'
AND BranchName LIKE 'Central'
GO

--------------------------------PROCEDURE-----------------------------------

SELECT B.BookID, B.Title, bc.BranchID, bc.No_Of_Copies, lb.BranchName
INTO #BookToBranch
FROM BOOK AS b
	INNER JOIN Book_copies AS bc
		on b.BookID = bc.BookID
	INNER JOIN Library_Branch AS lb
		on bc.BranchID = Lb.BranchID
WHERE Title LIKE 'The Lost Tribe'
GO
CREATE PROCEDURE LostTribeOwner
	@BranchName varchar(30),
	@LostTribe int OUTPUT
AS
	SELECT @LostTribe = count(*)
	FROM #BookToBranch
	WHERE BranchName = @BranchName
GO
DECLARE @LostTribe int
EXEC LostTribeOwner @BranchName = 'Sharpstown', @LostTribe = @LostTribe OUTPUT
SELECT @LostTribe

SELECT * FROM BOOK