USE LibraryDB;

-- Insert sample books
INSERT INTO Books (Title, Author, Genre, PublishedYear, AvailableCopies)
VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 5),
('Clean Code', 'Robert C. Martin', 'Programming', 2008, 3),
('Harry Potter', 'J.K. Rowling', 'Fantasy', 1997, 7);

-- Insert sample members
INSERT INTO Members (Name, Email, Phone, JoinDate)
VALUES
('Sachin Kumar', 'sachin@example.com', '9876543210', '2025-01-15'),
('Anjali Sharma', 'anjali@example.com', '9123456789', '2025-02-01');

-- Insert sample loans
INSERT INTO Loans (BookID, MemberID, IssueDate, DueDate, ReturnDate)
VALUES
(1, 1, '2025-02-10', '2025-02-20', NULL),
(2, 2, '2025-02-12', '2025-02-22', '2025-02-20');
