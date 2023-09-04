Select * from loans
--Write SQL Query To Find The Total Number Of Loans For Each Customer.
SELECT
    C.CustomerID,
    C.FirstName,
    C.LastName,
    COUNT(L.LoanID) AS TotalLoans
FROM
    Customer_Database C
LEFT JOIN
    Loans L ON C.CustomerID = L.CustomerID
GROUP BY
    C.CustomerID, C.FirstName, C.LastName;

	--Write SQL Query To Calculate The Average Loan Amount

	SELECT AVG(LoanAmount) AS AverageLoanAmount FROM Loans;
	--Write A Query To Update The Status Of A Specific Loan.
	UPDATE Loans
SET LoanStatus = 'Approved'
WHERE LoanID = 5;

--Write A Query To Delete A Customer And All Associated Loans.
DELETE FROM Loans
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Customer_Database
    WHERE CustomerID = 135144
);

DELETE FROM Customer_Database
WHERE CustomerID =135144