
CREATE DATABASE BankingSystem;
USE BankingSystem;


CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Address VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(50)
);


CREATE TABLE Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    AccountType ENUM('Savings', 'Checking'),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATETIME,
    TransactionType ENUM('Deposit', 'Withdrawal', 'Transfer'),
    Amount DECIMAL(10,2),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);


CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    LoanType ENUM('Home', 'Car', 'Personal', 'Education'),
    Amount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    LoanDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (FirstName, LastName, DOB, Address, Phone, Email)
VALUES 
('John', 'Doe', '1990-05-12', '123 Main St', '9876543210', 'john@example.com'),
('Alice', 'Smith', '1985-09-25', '456 Park Ave', '8765432109', 'alice@example.com');


INSERT INTO Accounts (CustomerID, AccountType, Balance)
VALUES
(1, 'Savings', 5000.00),
(1, 'Checking', 2000.00),
(2, 'Savings', 8000.00);


INSERT INTO Transactions (AccountID, TransactionDate, TransactionType, Amount)
VALUES
(1, NOW(), 'Deposit', 1000.00),
(1, NOW(), 'Withdrawal', 500.00),
(2, NOW(), 'Deposit', 2000.00);


INSERT INTO Loans (CustomerID, LoanType, Amount, InterestRate, LoanDate)
VALUES
(1, 'Car', 20000.00, 7.5, '2022-01-10'),
(2, 'Home', 150000.00, 6.8, '2021-05-15');


SELECT * FROM Customers;


SELECT C.FirstName, C.LastName, SUM(A.Balance) AS TotalBalance
FROM Customers C
JOIN Accounts A ON C.CustomerID = A.CustomerID
GROUP BY C.CustomerID;


SELECT * FROM Transactions WHERE AccountID = 1;


SELECT C.FirstName, C.LastName, L.Amount, L.LoanType
FROM Customers C
JOIN Loans L ON C.CustomerID = L.CustomerID
WHERE L.Amount > 50000;


SELECT AccountID,
       SUM(CASE WHEN TransactionType='Deposit' THEN Amount ELSE 0 END) AS TotalDeposits,
       SUM(CASE WHEN TransactionType='Withdrawal' THEN Amount ELSE 0 END) AS TotalWithdrawals
FROM Transactions
GROUP BY AccountID;
