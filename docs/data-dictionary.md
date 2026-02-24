# Data Dictionary

This data dictionary defines every table and field in the Insurance Claims Data Model.  
It includes data types, descriptions, and business meaning to support clarity and maintainability.

---

## 🧱 Customer

| Field       | Type         | Description |
|-------------|--------------|-------------|
| CustomerID  | INT (PK)     | Unique identifier for each customer. |
| FirstName   | VARCHAR(50)  | Customer's first name. |
| LastName    | VARCHAR(50)  | Customer's last name. |
| DOB         | DATE         | Date of birth. |
| Email       | VARCHAR(100) | Contact email address. |
| Phone       | VARCHAR(20)  | Contact phone number. |

---

## 🧱 Policy

| Field         | Type           | Description |
|---------------|----------------|-------------|
| PolicyID      | INT (PK)       | Unique identifier for each policy. |
| CustomerID    | INT (FK)       | Links policy to the customer who owns it. |
| PolicyType    | VARCHAR(50)    | Type of insurance (e.g., Home, Auto, Health). |
| StartDate     | DATE           | Policy start date. |
| EndDate       | DATE           | Policy end date. |
| PremiumAmount | DECIMAL(10,2)  | Monthly premium charged to the customer. |

---

## 🧱 Claim

| Field        | Type           | Description |
|--------------|----------------|-------------|
| ClaimID      | INT (PK)       | Unique identifier for each claim. |
| PolicyID     | INT (FK)       | Links claim to the policy it belongs to. |
| ClaimDate    | DATE           | Date the claim was submitted. |
| ClaimType    | VARCHAR(50)    | Type of claim (e.g., Accident, Theft). |
| ClaimStatus  | VARCHAR(20)    | Status (Open, Closed, Pending). |
| ClaimAmount  | DECIMAL(10,2)  | Total amount claimed. |

---

## 🧱 Payment

| Field         | Type           | Description |
|---------------|----------------|-------------|
| PaymentID     | INT (PK)       | Unique identifier for each payment. |
| ClaimID       | INT (FK)       | Links payment to the claim it settles. |
| PaymentDate   | DATE           | Date payment was made. |
| PaymentAmount | DECIMAL(10,2)  | Amount paid. |
| PaymentMethod | VARCHAR(30)    | Method used (Bank Transfer, Cheque). |

---

## 🧱 Assessor

| Field            | Type           | Description |
|------------------|----------------|-------------|
| AssessorID       | INT (PK)       | Unique identifier for each assessor. |
| Name             | VARCHAR(100)   | Assessor's full name. |
| CertificationLevel | VARCHAR(50)  | Qualification level (e.g., Senior, Junior). |

---

## 🧱 Assessment

| Field            | Type           | Description |
|------------------|----------------|-------------|
| AssessmentID     | INT (PK)       | Unique identifier for each assessment. |
| ClaimID          | INT (FK)       | Claim being assessed. |
| AssessorID       | INT (FK)       | Assessor performing the evaluation. |
| AssessmentDate   | DATE           | Date of assessment. |
| AssessmentOutcome| VARCHAR(50)    | Result (Approved, Rejected, Needs Review). |
| Notes            | TEXT           | Additional comments. |
