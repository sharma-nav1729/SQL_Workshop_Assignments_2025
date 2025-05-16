-- Day1_Basics/sample_data.sql

-- Sales data
INSERT INTO Sales VALUES
(1, 101, 'Electronics', '2023-10-02', 500.00),
(2, 102, 'Clothing', '2023-10-05', 300.00),
(3, 103, 'Beauty', '2023-10-10', 200.00),
(4, 104, 'Electronics', '2023-10-15', 750.00),
(5, 105, 'Clothing', '2023-10-20', 500.00),
(6, 106, 'Clothing', '2023-11-01', 600.00);

-- Customers data
INSERT INTO Customers VALUES
('C001', 'Amit', 'Delhi', 2, 1000.00, 700.00, 300.00, 300.00, 'A001'),
('C002', 'Ravi', 'Mumbai', 2, 1500.00, 800.00, 400.00, 300.00, 'A002'),
('C003', 'Sonia', 'Delhi', 1, 1200.00, 600.00, 200.00, 400.00, 'A001'),
('C004', 'Neha', 'Chennai', 2, 800.00, 550.00, 250.00, 300.00, 'A003'),
('C005', 'Karan', 'Mumbai', 3, 900.00, 400.00, 350.00, 200.00, 'A002');
