-- Query 1: Currently borrowed books
SELECT b.Title, m.Name, l.IssueDate, l.DueDate
FROM Loans l
JOIN Books b ON l.BookID = b.BookID
JOIN Members m ON l.MemberID = m.MemberID
WHERE l.ReturnDate IS NULL;

-- Query 2: Most borrowed book
SELECT b.Title, COUNT(*) AS BorrowCount
FROM Loans l
JOIN Books b ON l.BookID = b.BookID
GROUP BY b.Title
ORDER BY BorrowCount DESC
LIMIT 1;

-- Query 3: Calculate fines for returned late
SELECT m.Name, b.Title,
       GREATEST(DATEDIFF(l.ReturnDate, l.DueDate), 0) * 10 AS Fine
FROM Loans l
JOIN Books b ON l.BookID = b.BookID
JOIN Members m ON l.MemberID = m.MemberID
WHERE l.ReturnDate IS NOT NULL;
