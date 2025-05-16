-- Day3_Aggregation/schema.sql

CREATE TABLE Sales (
	    SaleID INT PRIMARY KEY,
	    ProductID INT,
	    Category VARCHAR(50),
	    SaleDate DATE,
	    SaleAmount DECIMAL(10, 2)
);
