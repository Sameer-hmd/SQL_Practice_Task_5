# SQL_Practice_Task_5

# 🔗 Task 5: SQL Joins (INNER, LEFT, RIGHT, FULL)

## 🎯 Objective
Learn to combine data from multiple tables using different types of SQL JOINs in the context of a Library Management System. This includes mastering `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and emulating `FULL OUTER JOIN`.

---

## 🧱 Tables Used
- `Member`: Contains library members
- `Book`: Contains books available in the library
- `Loan`: Records details of books borrowed by members

---

## 🛠 Tools Used
- MySQL Workbench / DB Browser for SQLite

---

## 🧠 SQL Concepts Practiced

### ✅ INNER JOIN
- Combines rows from two tables where the join condition is met.
- Example: List members who have borrowed books.

### ✅ LEFT JOIN
- Returns all rows from the left table, and matching rows from the right table (NULL if no match).
- Example: Show all books including those that were never loaned.

### ✅ RIGHT JOIN *(MySQL-specific)*
- Returns all rows from the right table and matching ones from the left.
- Example: List all loans even if corresponding book/member info is missing.

### ✅ FULL OUTER JOIN (Emulated)
- Combines `LEFT` and `RIGHT` joins using `UNION` to return all rows from both tables.
- Not directly supported in MySQL, but can be simulated.

---

## 🧪 Examples Performed

### 🔹 Two-Table Joins
- `INNER JOIN` between `Member` and `Loan` to find who borrowed books.
- `LEFT JOIN` from `Book` to `Loan` to list all books and whether they were borrowed.
- `RIGHT JOIN` from `Loan` to `Member` to list all members involved in loans.
- `FULL OUTER JOIN` emulation between `Book` and `Loan`.

### 🔹 Three-Table Joins
- Join `Member`, `Loan`, and `Book` to show who borrowed which book and when.
- Use `LEFT JOIN` to include members even if they never borrowed a book.

---

## 💡 Learning Outcomes
- Understand the differences between join types and when to use them.
- Learn how to retrieve combined and complete data from related tables.
- Apply join logic in real-world scenarios like loan tracking and user reporting.

---
