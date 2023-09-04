CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanType VARCHAR(50),
    LoanAmount DECIMAL(18, 2),
    InterestRate DECIMAL(5, 2),
    LoanTerm INT,
    LoanStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customer_Database(CustomerID)
);
INSERT INTO Loans (LoanID, CustomerID, LoanType, LoanAmount, InterestRate, LoanTerm, LoanStatus)
VALUES (1, '123459','Personal Loan','10000.00','5.00','36','Approved');
--//TASK 6 Write SQL Query Retrieve The List Of All Customers.
Select * from Loans