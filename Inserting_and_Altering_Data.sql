USE db_LibrariesDavid
GO

ALTER TABLE PUBLISHERS
ALTER COLUMN Phone varchar(50) --Changing the datatype so the Phone numbers look like actual 10-digit numbers instead of random integers. Same with BORROWERS table.

INSERT INTO PUBLISHERS ([Name], [Address], Phone) 
VALUES 
('Alpha Publishers', '123 Publishing Lane', '(555)555-5555'),
('Beta Publishing', '456 Books Drive', '(444)444-4444)'),
('Charlie Publishers', '333 Literature Lane', '(777)777-7777'),
('Delta Publishers', '707 Reading Rainbow Avenue', '(888)888-8888'),
('Epsilon Publishing', '121 Epilogue Street', '(999)999-9999')

SELECT * FROM PUBLISHERS

INSERT INTO BOOK (Title, PublisherName)
VALUES
('The Lost Tribe', 'Alpha Publishers'),
('The Found Tribe', 'Alpha Publishers'),
('Looking for a Tribe', 'Alpha Publishers'),
('What to do after finding a Tribe', 'Alpha Publishers'),
('Furry Claymaker: The Wizards Pebble', 'Beta Publishing'),
('Furry Claymaker: Room of Gossip', 'Beta Publishing'),
('Furry Claymaker: Full-Blooded Princess', 'Beta Publishing'),
('Furry Claymaker: Lively Fellows', 'Beta Publishing'),
('Lord of the Kings', 'Charlie Publishers'),
('The Hoppit', 'Charlie Publishers'),
('Shadow of Maredare', 'Charlie Publishers'),
('Central-Earth', 'Charlie Publishers'),
('A New Hop', 'Delta Publishers'),
('Revenge of the Smith', 'Delta Publishers'),
('The Fart Awakens', 'Delta Publishers'),
('The Last Magi', 'Delta Publishers'),
('How to Write a Book', 'Epsilon Publishing'),
('How to Write a Sequel', 'Epsilon Publishing'),
('How to Write a Trilogy', 'Epsilon Publishing'),
('How to Milk a Franchise', 'Epsilon Publishing')

SELECT * FROM BOOK

INSERT INTO BOOK_AUTHORS (BookID, AuthorName)
VALUES
(2000, 'Stephen King'),
(2010, 'Stephen King'),
(2020, 'Stephany Queen'),
(2030, 'Stephany Queen'),
(2040, 'O.K. Howling'),
(2050, 'O.K. Howling'),
(2060, 'Jim Potterson'),
(2070, 'Jim Potterson'),
(2080, 'G.R.R. Token'),
(2090, 'G.R.R. Token'),
(2100, 'Jorge R.R. Marvin'),
(2110, 'Jorge R.R. Marvin'),
(2120, 'Greg Louis'),
(2130, 'Greg Louis'),
(2140, 'Jamie Camry'),
(2150, 'Jamie Camry'),
(2160, 'P.S. Lois'),
(2170, 'P.S. Lois'),
(2180, 'Urgent Sowingway'),
(2190, 'Urgent Sowingway')

SELECT * FROM BOOK_AUTHORS;

INSERT INTO LIBRARY_BRANCH (BranchName, [Address])
VALUES
('Sharpstown', '334 Dull Avenue'),
('Central', '454 Middle Lane'),
('Los Santos', '777 Hasselhoff Street'),
('Old Yankee City', '123 Time Circle')

SELECT * FROM LIBRARY_BRANCH;

INSERT INTO BOOK_COPIES (BookID, BranchID, No_Of_Copies)
VALUES
(2000, 300, 4),
(2010, 300, 4),
(2020, 300, 4),
(2030, 300, 4),
(2040, 300, 4),
(2050, 300, 4),
(2060, 300, 4),
(2070, 300, 4),
(2080, 300, 4),
(2090, 300, 4),
(2100, 300, 4),
(2110, 300, 4),
(2000, 301, 4),
(2010, 301, 4),
(2020, 301, 4),
(2030, 301, 4),
(2040, 301, 4),
(2050, 301, 4),
(2060, 301, 4),
(2070, 301, 4),
(2080, 301, 4),
(2090, 301, 4),
(2100, 301, 4),
(2110, 301, 4),
(2080, 302, 4),
(2090, 302, 4),
(2100, 302, 4),
(2110, 302, 4),
(2120, 302, 4),
(2130, 302, 4),
(2140, 302, 4),
(2150, 302, 4),
(2160, 302, 4),
(2170, 302, 4),
(2180, 302, 4),
(2190, 302, 4),
(2080, 303, 4),
(2090, 303, 4),
(2100, 303, 4),
(2110, 303, 4),
(2120, 303, 4),
(2130, 303, 4),
(2140, 303, 4),
(2150, 303, 4),
(2160, 303, 4),
(2170, 303, 4),
(2180, 303, 4),
(2190, 303, 4)

SELECT * FROM BOOK_COPIES;

ALTER TABLE BORROWERS
ALTER COLUMN Phone varchar(50) --changing to a more familiar looking data type for phone numbers. 

INSERT INTO BORROWERS (NameBorrower, [Address], Phone)
VALUES
('Steven Cobalt', '321 Late Show Lane', '(121)232-3434'),
('Donny Tramp', '1500 Castlevania Blvd', '(232)343-4545'),
('Gladimir Tootin', '4000 Russia Street', '(343)454-5656'),
('Okra Windfreeze', '3400 Own Road', '(454)565-6767'),
('Arnold Palmer', '890 Lemon Tea Drive', '(565)676-7878'),
('George Cleanington', '111 President Lane', '(676)787-8989'),
('Saint Claws', '1225 Christmas Street', '(787)898-9090'),
('Will Doors', '117 Microsoft Blvd', '(898)909-0101')

SELECT * FROM BORROWERS;

INSERT INTO BOOK_LOANS (BookID, BranchID, CardNo, DateOut, DueDate)
VALUES
(2000, 300, 1000, '20171026', '20171126'),
(2010, 300, 1000, '20171026', '20171126'),
(2020, 300, 1000, '20171026', '20171126'),
(2030, 300, 1000, '20171026', '20171126'),
(2040, 300, 1000, '20171027', '20171127'),
(2050, 300, 1000, '20171027', '20171127'),
(2060, 300, 1000, '20171027', '20171127'),
(2070, 300, 1000, '20171027', '20171127'),
(2080, 300, 1000, '20171028', '20171128'),
(2090, 300, 1000, '20171028', '20171128'),
(2100, 302, 1020, '20171026', '20171126'),
(2110, 302, 1020, '20171026', '20171126'),
(2120, 302, 1020, '20171026', '20171126'),
(2130, 302, 1020, '20171026', '20171126'),
(2140, 302, 1020, '20171027', '20171127'),
(2150, 302, 1020, '20171027', '20171127'),
(2160, 302, 1020, '20171027', '20171127'),
(2170, 302, 1020, '20171027', '20171127'),
(2180, 302, 1020, '20171028', '20171128'),
(2190, 302, 1020, '20171028', '20171128'),
(2000, 301, 1030, '20171026', '20171126'),
(2010, 301, 1030, '20171026', '20171126'),
(2020, 301, 1030, '20171026', '20171126'),
(2030, 301, 1030, '20171026', '20171126'),
(2040, 301, 1030, '20171027', '20171127'),
(2050, 301, 1030, '20171027', '20171127'),
(2060, 301, 1030, '20171027', '20171127'),
(2070, 301, 1030, '20171027', '20171127'),
(2080, 301, 1030, '20171028', '20171128'),
(2090, 301, 1030, '20171028', '20171128'),
(2100, 303, 1050, '20171026', '20171126'),
(2110, 303, 1050, '20171026', '20171126'),
(2120, 303, 1050, '20171026', '20171126'),
(2130, 303, 1050, '20171026', '20171126'),
(2140, 303, 1050, '20171027', '20171127'),
(2150, 303, 1050, '20171027', '20171127'),
(2160, 303, 1050, '20171027', '20171127'),
(2170, 303, 1050, '20171027', '20171127'),
(2180, 303, 1050, '20171028', '20171128'),
(2190, 303, 1050, '20171028', '20171128'),
(2000, 301, 1060, '20171028', '20171128'),
(2010, 301, 1060, '20171028', '20171128'),
(2020, 301, 1060, '20171028', '20171128'),
(2030, 301, 1060, '20171029', '20171129'),
(2150, 303, 1060, '20171029', '20171129'),
(2040, 300, 1070, '20171028', '20171128'),
(2050, 300, 1070, '20171028', '20171128'),
(2060, 300, 1070, '20171029', '20171129'),
(2070, 300, 1070, '20171029', '20171129'),
(2160, 302, 1070, '20171029', '20171129')

SELECT * FROM BOOK_LOANS;
