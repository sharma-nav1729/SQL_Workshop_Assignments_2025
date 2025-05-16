-- Day2_Joins/sample_data.sql

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics'),
(102, 'T-Shirt', 'Clothing'),
(103, 'Lipstick', 'Beauty'),
(104, 'Smartphone', 'Electronics');

INSERT INTO Customers VALUES
('C001', 'Amit', 'Delhi'),
('C002', 'Ravi', 'Mumbai'),
('C003', 'Sonia', 'Delhi'),
('C004', 'Neha', 'Chennai');

INSERT INTO Orders VALUES
(1001, 101, 'C001', '2023-10-01', 1),
(1002, 102, 'C002', '2023-10-05', 3),
(1003, 103, 'C003', '2023-10-10', 2),
(1004, 104, 'C001', '2023-10-12', 1),
(1005, 102, 'C004', '2023-10-15', 4);
