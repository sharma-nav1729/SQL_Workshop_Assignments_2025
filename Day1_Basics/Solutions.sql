-- Question 1
SELECT * FROM Customers;

-- Question 2
SELECT CUST_NAME, CUST_CITY
FROM Customers
WHERE CUST_CITY = 'New York';

-- Question 3
SELECT * FROM Customers
ORDER BY CUST_NAME ASC;

-- Question 4
SELECT * FROM Customers
WHERE OPENING_AMT > 5000;

-- Question 5
SELECT * FROM Customers
WHERE CUST_CITY IN ('New York', 'Los Angeles');

-- Question 6
SELECT * FROM Customers
WHERE CUST_CITY <> 'Chicago';

-- Question 7
SELECT * FROM Customers
WHERE CUST_NAME LIKE 'A%';

-- Question 8
SELECT * FROM Customers
WHERE GRADE = 2 AND OUTSTANDING_AMT < 1000;
