-- Question 1
WITH CategoryRevenue AS (
    SELECT Category, SUM(SaleAmount) AS TotalRevenue
    FROM Sales
    WHERE SaleDate BETWEEN '2023-10-01' AND '2023-10-31'
    GROUP BY Category
)
SELECT * FROM CategoryRevenue
ORDER BY Category ASC;

-- Question 2
WITH CityStats AS (
    SELECT CUST_CITY,
           SUM(OPENING_AMT) AS TotalOpening,
           AVG(RECEIVE_AMT) AS AvgReceive,
           MAX(PAYMENT_AMT) AS MaxPayment
    FROM Customers
    WHERE GRADE = 2
    GROUP BY CUST_CITY
)
SELECT *
FROM CityStats
WHERE AvgReceive > 500
ORDER BY TotalOpening ASC;

-- Question 3
WITH AgentCustomerCount AS (
    SELECT AGENT_CODE, COUNT(*) AS CustomerCount
    FROM Customers
    GROUP BY AGENT_CODE
)
SELECT AGENT_CODE, CustomerCount
FROM AgentCustomerCount
WHERE CustomerCount > 2;

-- Question 4
WITH AvgPayment AS (
    SELECT AVG(PAYMENT_AMT) AS AvgPay
    FROM Customers
)
SELECT *
FROM Customers
WHERE PAYMENT_AMT > (SELECT AvgPay FROM AvgPayment);

-- Question 5
WITH AgentOutstanding AS (
    SELECT AGENT_CODE, SUM(OUTSTANDING_AMT) AS TotalOutstanding
    FROM Customers
    GROUP BY AGENT_CODE
),
MaxOutstanding AS (
    SELECT MAX(TotalOutstanding) AS MaxOut
    FROM AgentOutstanding
)
SELECT a.AGENT_CODE, a.TotalOutstanding
FROM AgentOutstanding a
JOIN MaxOutstanding m ON a.TotalOutstanding = m.MaxOut;
