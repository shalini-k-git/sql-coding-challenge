CREATE DATABASE bookstore;
use bookstore;

/*•  Question 1: CREATE TABLE with PRIMARY & FOREIGN KEY
  Create a table Books with columns:
o    BookID → INTEGER, PRIMARY KEY
o    Title → VARCHAR(100), NOT NULL
o    Author → VARCHAR(50), NOT NULL
o    ISBN → VARCHAR(20), UNIQUE
o    Price → DECIMAL(8,2), CHECK(Price > 0)
•    Create a table Orders with columns:
o    OrderID → INTEGER, PRIMARY KEY
o    BookID → INTEGER, FOREIGN KEY REFERENCES Books(BookID)
o    OrderDate → DATE, NOT NULL
o    Quantity → INTEGER, CHECK(Quantity > 0)
*/

CREATE TABLE books(
BookID INT primary key,
Title VARCHAR(100) NOT NULL,
Author VARCHAR(50) NOT NULL,
ISBN VARCHAR(20) UNIQUE,
Price Decimal(8,2) CHECK(Price > 0)
);

CREATE TABLE Orders(
OrderID INT primary key,
BookID INT REFERENCES books(BOOKID),
OrderDate DATE NOT NULL,
Quantity INT CHECK(Quantity>0)
);

/*Question 2: INSERT, RETRIEVE & UPDATE with Constraints
Scenario:
You want to add sample book data and update certain records.
Task:
•    Insert at least 5 records into the Books table, respecting all constraints.
•    Retrieve all records to verify entries.
•    Update the Price or Quantity for a specific record while maintaining the CHECK constraints.
Expected Output:
All entries and updates comply with constraints and are displayed correctly.
*/

INSERT INTO books (BookID,Title,Author,ISBN,Price) VALUES
(101,"Pride and Prejudice","Jane Austen",9789394791787,500),
(102,"To Kill a Mocking Bird","Harper Lee",100376182547,300),
(103,"One Hundred Years of Solitute","Gabriel Garcia Marquez",9348229481899,700),
(104,"Brave New World","Aldous Huxley",9374173942759,250),
(105,"I Capture the Castle","Dodie Smith",8372947194721,400);

Select * from books;

INSERT INTO Orders (OrderID,BookID,OrderDate,Quantity) VALUES
(123,101,'2025-04-01',3),
(200,102,'2025-09-01',6),
(351,103,'2025-06-03',1),
(456,104,'2025-01-05',7),
(500,105,'2025-03-01',2);

Select * from Orders;

UPDATE books SET Price = 600 WHERE BookID=101;
UPDATE Orders SET Quantity = 10 WHERE OrderID=200;

/*
Question 3: DELETE vs TRUNCATE
Scenario:
The bookstore wants to manage orders by removing some rows or clearing all data.
Task:
•    Use DELETE with a WHERE clause to remove specific rows from Orders table.
•    Use TRUNCATE to remove all rows while keeping table structure intact.
Expected Output:
•    DELETE removes selected rows.
•    TRUNCATE clears all rows quickly but keeps the table structure.
*/

DELETE FROM Orders WHERE OrderID = 123;
TRUNCATE Orders;
