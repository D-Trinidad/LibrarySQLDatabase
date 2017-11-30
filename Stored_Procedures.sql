USE db_LibrariesDavid
GO

/*1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

CREATE PROCEDURE dbo.uspGetLTCopies@Sharpstown
AS
SELECT No_Of_Copies
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK.BookID = BOOK_COPIES.BookID
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
WHERE Title = 'The Lost Tribe' AND BranchName = 'Sharpstown'
GO

EXEC uspGetLTCopies@Sharpstown;


/*2. How many copies of the book titled "The Lost Tribe" are owned by each library branch? */

CREATE PROCEDURE dbo.uspGetLTCopies@All
AS
SELECT a1.BranchName, a2.No_Of_Copies
FROM LIBRARY_BRANCH a1
INNER JOIN BOOK_COPIES a2 ON a1.BranchID = a2.BranchID
INNER JOIN BOOK a3 ON a2.BookID = a3.BookID
WHERE a3.Title = 'The Lost Tribe' 
GO

EXEC uspGetLTCopies@All;


/* 3. Retrieve the names of all borrowers who do not have any books checked out. */

CREATE PROC dbo.uspGetNoBorrows
AS
SELECT DISTINCT A.NAMEBORROWER FROM BORROWERS  A 
LEFT JOIN BOOK_LOANS B ON A.CARDNO = B.CARDNO 
WHERE  B.CARDNO IS NULL
GO

EXEC dbo.uspGetNoBorrows


/* 4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today or passed due, retrieve the book title, the borrower's name, and the borrower's address along with the due date. */

CREATE PROC dbo.uspGetDueBooks
AS
SELECT b.Title, bw.NameBorrower, bw.Address, bl.DueDate
FROM BOOK AS b
INNER JOIN BOOK_LOANS AS bl ON b.BookID = bl.BookID
INNER JOIN BORROWERS AS bw ON bl.CardNo = bw.CardNo
INNER JOIN LIBRARY_BRANCH AS lb ON bl.BranchID = lb.BranchID
WHERE lb.BranchName = 'Sharpstown'
AND GETDATE() >= bl.DueDate
GO

EXEC dbo.uspGetDueBooks;


/* 5. For each library branch, retrieve the branch name and the total number of books loaned out from that branch. */

CREATE PROC dbo.uspGetCheckOutBooks
AS
SELECT lb.BranchName, COUNT(bl.BookID) AS 'Checked Out Books'
FROM LIBRARY_BRANCH AS lb
INNER JOIN BOOK_LOANS AS bl ON lb.BranchID = bl.BranchID
GROUP BY lb.BranchName
GO

EXEC dbo.uspGetCheckOutBooks


/* 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out. */

CREATE PROC dbo.uspGetLoanedBooksMoreThan5
AS
SELECT bw.NameBorrower, bw.[Address], COUNT(bl.BookID) AS 'Checked Out Books'
FROM BORROWERS AS bw
JOIN BOOK_LOANS AS bl ON bw.CardNo = bl.CardNo
GROUP BY bw.NameBorrower, bw.Address
HAVING COUNT(bl.BookID) > 5
GO

EXEC dbo.uspGetLoanedBooksMoreThan5


/* 7. For each book authored by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central". */

CREATE PROC dbo.uspGetStephenKingsCentralBooks
AS
SELECT b.Title, bc.No_Of_Copies
FROM BOOK AS b
INNER JOIN BOOK_COPIES AS bc ON b.BookID = bc.BookID
INNER JOIN BOOK_AUTHORS AS ba ON b.BookID = ba.BookID
INNER JOIN LIBRARY_BRANCH AS lb ON bc.BranchID = lb.BranchID
WHERE ba.AuthorName = 'Stephen King'
AND lb.BranchName = 'Central'
GO

EXEC dbo.uspGetStephenKingsCentralBooks;
