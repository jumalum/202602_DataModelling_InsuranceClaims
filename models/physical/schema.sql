-- Insurance Claims Data Model - Physical Schema
-- This schema implements the logical model using standard SQL.

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Policy (
    PolicyID INT PRIMARY KEY,
    CustomerID INT,
    PolicyType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    PremiumAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Claim (
    ClaimID INT PRIMARY KEY,
    PolicyID INT,
    ClaimDate DATE,
    ClaimType VARCHAR(50),
    ClaimStatus VARCHAR(20),
    ClaimAmount DECIMAL(10,2),
    FOREIGN KEY (PolicyID) REFERENCES Policy(PolicyID)
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    ClaimID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentMethod VARCHAR(30),
    FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID)
);

CREATE TABLE Assessor (
    AssessorID INT PRIMARY KEY,
    Name VARCHAR(100),
    CertificationLevel VARCHAR(50)
);

CREATE TABLE Assessment (
    AssessmentID INT PRIMARY KEY,
    ClaimID INT,
    AssessorID INT,
    AssessmentDate DATE,
    AssessmentOutcome VARCHAR(50),
    Notes TEXT,
    FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID),
    FOREIGN KEY (AssessorID) REFERENCES Assessor(AssessorID)
);
