Day2_Joins/schema.sql

CREATE TABLE Products (
	    ProductID INT PRIMARY KEY,
	    ProductName VARCHAR(100),
	    Category VARCHAR(50)
);

CREATE TABLE Orders (
	    OrderID INT PRIMARY KEY,
	    ProductID INT,
	    CustomerID VARCHAR(10),
	    OrderDate DATE,
	    Quantity INT,
	    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Customers (
	    CustomerID VARCHAR(10) PRIMARY KEY,
	    CustomerName VARCHAR(50),
	    City VARCHAR(50)
);
