# Library DataBase Exercise

<a href="http://fvcproductions.com"><img src="https://github.com/CodingMikey/Library-DB-Exercise-SQL/blob/master/dbLibrarySchema.png" title="Library Schema" alt="Schema"></a>

## Create Data Base W/ Following Conditions:

1. There is a book called 'The Lost Tribe' found in the 'Sharpstown' branch.
1. There is a library branch called 'Sharpstown' and one called 'Central'.
1. There are at least 20 books in the BOOK table.
1. There are at least 10 authors in the BOOK_AUTHORS table.
1. Each library branch has at least 10 book titles, and at least two copies of each of those titles.
1. There are at least 8 borrowers in the BORROWER table, and at least 2 of those borrowers have more than 5 books loaned to them.
1. There are at least 4 branches in the LIBRARY_BRANCH table.
1. There are at least 50 loans in the BOOK_LOANS table.
1. There must be at least two books written by 'Stephen King' located at the 'Central' branch.

## Create Stored Procedures To Query The Following:
1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
1. How many copies of the book titled "The Lost Tribe" are owned by each library branch?
1. Retrieve the names of all borrowers who do not have any books checked out.
1. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.
1. For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
1. Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.
1. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".
