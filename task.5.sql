-- List books that have been loaned, with loan dates
SELECT b.BookID, b.Title, l.LoanDate
FROM Book b
INNER JOIN Loan l ON b.BookID = l.BookID;


-- List all members and their loan info (if any)
SELECT m.MemberID, m.Name, l.LoanDate
FROM Member m
LEFT JOIN Loan l ON m.MemberID = l.MemberID;


-- Show all loan records with member info (if exists)
SELECT l.LoanID, m.Name, l.LoanDate
FROM Loan l
RIGHT JOIN Member m ON l.MemberID = m.MemberID;


-- Show all loan records and the books involved
SELECT l.LoanID, b.Title, l.LoanDate
FROM Loan l
RIGHT JOIN Book b ON l.BookID = b.BookID;


-- Show member name, book title, and loan date
SELECT m.Name AS MemberName, b.Title AS BookTitle, l.LoanDate
FROM Loan l
INNER JOIN Member m ON l.MemberID = m.MemberID
INNER JOIN Book b ON l.BookID = b.BookID;


-- Emulating FULL OUTER JOIN between Book and Loan
SELECT b.BookID, b.Title, l.LoanDate
FROM Book b
LEFT JOIN Loan l ON b.BookID = l.BookID

UNION

SELECT b.BookID, b.Title, l.LoanDate
FROM Book b
RIGHT JOIN Loan l ON b.BookID = l.BookID;
