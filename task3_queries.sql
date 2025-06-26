
-- CREATE TABLES AND INSERT DATA (from Task 2)
-- We need a populated database to query from.
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL DEFAULT 0
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Arav', 'Mehta', 'arav.m@example.com'),
(2, 'Arnav', 'Joshi', 'arnav.j@example.com'),
(3, 'Vishu', 'Gupta', 'vishu.g@example.com');


INSERT INTO Books (BookID, Title, Author, Genre, Price, StockQuantity) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 'Adventure', 12.99, 60),
(102, 'A Suitable Boy', 'Vikram Seth', 'Novel', 19.99, 25),
(103, '1984', 'George Orwell', 'Dystopian', 9.50, 80),
(104, 'Malgudi Days', 'R. K. Narayan', 'Fiction', 11.00, 45),
(105, 'The White Tiger', 'Aravind Adiga', 'Novel', 14.00, 30);


---Query section

Query 1: Select all columns from the Customers table.
The '*' means "all columns".
SELECT * FROM Customers;

-- Query 2: Select only the title and author from the Books table.
-- This is called "projection".
SELECT Title, Author FROM Books;

-- Query 3: Filter to find all books in the 'Novel' genre.
-- The WHERE clause is used for filtering.
SELECT * FROM Books WHERE Genre = 'Novel';

-- Query 4: Find all books that cost more than 15.
-- Using a numerical condition in the WHERE clause.
SELECT * FROM Books WHERE Price > 15;

-- Query 5: Find all books written by authors whose name starts with 'A'.
-- The LIKE operator is used for pattern matching. '%' is a wildcard.
SELECT * FROM Books WHERE Author LIKE 'A%';

-- Query 6: Find all books with a price between $10 and $15.
-- The BETWEEN operator is inclusive.
SELECT * FROM Books WHERE Price BETWEEN 10 AND 15;

-- Query 7: List all books, sorted by their title in alphabetical order.
-- ORDER BY sorts the results. ASC is the default (A-Z).
SELECT * FROM Books ORDER BY Title ASC;

-- Query 8: List all books, sorted by stock quantity from highest to lowest.
-- We use DESC for descending order.
SELECT * FROM Books ORDER BY StockQuantity DESC;

-- Query 9: Find the 2 cheapest books in the store.
-- LIMIT restricts the number of rows in the output.
SELECT Title, Price FROM Books ORDER BY Price ASC LIMIT 2;

-- Query 10: Find all unique genres available in the Books table.
-- DISTINCT removes duplicate values from the result.
SELECT DISTINCT Genre FROM Books;