DROP DATABASE IF EXISTS mini_bank_cc;
CREATE DATABASE mini_bank_cc;
USE mini_bank_cc;


CREATE TABLE Customers
(
	CustomerID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
    ZipCode VARCHAR(10),
	City VARCHAR(100)
);

CREATE TABLE Accounts
(
	AccountNumber VARCHAR(25) PRIMARY KEY NOT NULL,
    OpenDate DATETIME NOT NULL,
    CreditLine FLOAT,
    Status VARCHAR(30) NOT NULL,
    Balance FLOAT NOT NULL,
    CustomerID INT NOT NULL,
    
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Cards
(
	CardNumber VARCHAR(16) PRIMARY KEY NOT NULL,
    BuyingLimit FLOAT,
    CashWithdrawalLimit INT,
    Type VARCHAR(30),
    Validity DATETIME,
    AccountNumber VARCHAR(25),
    
    FOREIGN KEY(AccountNumber) REFERENCES Accounts(AccountNumber)
);

CREATE TABLE Transactions
(
	TransactionID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Status VARCHAR(30) NOT NULL,
    DateOfTransaction DATETIME,
    Value FLOAT,
    Location VARCHAR(100),
    AccountNumber VARCHAR(25),
    
    FOREIGN KEY(AccountNumber) REFERENCES Accounts(AccountNumber)
);

CREATE TABLE CardTransactions
(
	TransactionID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Value FLOAT,
    Location VARCHAR(100),
    Type VARCHAR(30),
    DateOfTransaction DATETIME NOT NULL,
    CardNumber VARCHAR(16) NOT NULL,
    
    FOREIGN KEY(CardNumber) REFERENCES Cards(CardNumber)
);
