CREATE DATABASE ShopDB;

USE ShopDB 

CREATE TABLE Products (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Price INT,
    WarehouseAmount INT
);
CREATE TABLE Customers (
	  ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
	  LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50)
);

CREATE TABLE Orders (
	  ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Date DATE,
	  FOREIGN KEY (CustomerID) REFERENCES Customers(ID)
);
CREATE TABLE OrderItems (
	  ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID),
    FOREIGN KEY (ProductID) REFERENCES Products(ID)
);
