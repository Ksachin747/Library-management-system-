# Library Management System (SQL Project)

## Overview

This project implements a simple **Library Management System** using a MySQL relational database. It manages books, library members, and book loans. The system tracks available copies, issues and returns, and calculates overdue fines.

---

## Features

- Manage book inventory with details like title, author, genre, and available copies.
- Register library members with contact info.
- Record book loans with issue and due dates.
- Calculate fines for overdue returns (₹10 per day).
- Run reports such as currently borrowed books and most borrowed titles.

---

## Database Schema

### Tables

- **Books**: Stores book info and available copies.
- **Members**: Stores member details.
- **Loans**: Tracks book issues and returns.

### Schema Definition

See [`schema.sql`](schema.sql) for the complete schema.

---

## Sample Data

See [`sample_data.sql`](sample_data.sql) for inserting sample records.

---

## Sample Queries

### 1. List all currently borrowed books with borrower details

```sql
SELECT b.Title, m.Name, l.IssueDate, l.DueDate
FROM Loans l
JOIN Books b ON l.BookID = b.BookID
JOIN Members m ON l.MemberID = m.MemberID
WHERE l.ReturnDate IS NULL;
```
