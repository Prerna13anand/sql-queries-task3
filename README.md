# sql-queries-task3
Task 3: Basic SELECT Queries

This repository contains my submission for the third SQL task, which focuses on retrieving data from a database using various SELECT statements.

Project Summary
The primary deliverable is a single SQL script (task3_queries.sql) that performs two main functions:

Sets up the database: The script first establishes the database schema from Task 1 and populates it with sample data for customers and books, building upon the INSERT statements from Task 2.

Queries the data: It then runs a series of 10 different SELECT queries to ask specific questions of the database. These queries demonstrate how to filter, project, and sort data using clauses like WHERE, ORDER BY, LIKE, BETWEEN, and LIMIT.

The script was tested using DB Fiddle with SQLite to ensure it runs correctly and produces the expected results.

Theoretical Questions & Answers
1. What does SELECT do?
The SELECT statement is used to retrieve or fetch data from one or more tables in a database.

2. How do you filter rows?
You filter rows using the WHERE clause, which specifies a condition that rows must meet to be included in the result set.

3. What is LIKE '%value%'?
The LIKE operator is used for pattern matching in strings. The % is a wildcard character that matches any sequence of characters. LIKE '%value%' finds any row where the specified column contains "value" anywhere within its text.

4. What is BETWEEN used for?
The BETWEEN operator is used to select values within a given range. It is inclusive, meaning it includes the start and end values of the range.

5. How do you limit output rows?
You use the LIMIT clause to restrict the number of rows returned by a query. This is often used with ORDER BY to find top or bottom results.

6. Difference between = and IN?
= compares a column to a single, specific value (e.g., WHERE Genre = 'Fiction'). IN checks if a column's value matches any value within a provided list (e.g., WHERE Genre IN ('Fiction', 'Novel')).

7. How to sort in descending order?
You use the DESC keyword after the column name in an ORDER BY clause (e.g., ORDER BY Price DESC) to sort results from highest to lowest.

8. What is aliasing?
Aliasing is the practice of giving a table or a column a temporary, alternative name in a query using the AS keyword (e.g., SELECT Title AS BookTitle FROM Books). This makes queries easier to read and understand.

9. Explain DISTINCT.
The DISTINCT keyword is used with SELECT to eliminate all duplicate rows from the result set and return only the unique values.

10. What is the default sort order?
The default sort order for an ORDER BY clause is ascending (ASC). This means data is sorted from A to Z for text or from the smallest to the largest number.
