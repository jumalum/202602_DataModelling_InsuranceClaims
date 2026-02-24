-- Sample SQL Queries for Insurance Claims Data Model

---------------------------------------------------------
-- 1. Claims per customer
---------------------------------------------------------
SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    COUNT(cl.ClaimID) AS TotalClaims
FROM Customer c
JOIN Policy p ON c.CustomerID = p.CustomerID
JOIN Claim cl ON p.PolicyID = cl.PolicyID
GROUP BY c.CustomerID, c.FirstName, c.LastName;

---------------------------------------------------------
-- 2. Total payments per claim
---------------------------------------------------------
SELECT 
    ClaimID,
    SUM(PaymentAmount) AS TotalPaid
FROM Payment
GROUP BY ClaimID;

---------------------------------------------------------
-- 3. Claims by status
---------------------------------------------------------
SELECT 
    ClaimStatus,
    COUNT(*) AS Count
FROM Claim
GROUP BY ClaimStatus;

---------------------------------------------------------
-- 4. Policies with active claims
---------------------------------------------------------
SELECT 
    p.PolicyID,
    p.PolicyType,
    cl.ClaimID,
    cl.ClaimStatus
FROM Policy p
JOIN Claim cl ON p.PolicyID = cl.PolicyID
WHERE cl.ClaimStatus = 'Open';

---------------------------------------------------------
-- 5. Assessments per assessor
---------------------------------------------------------
SELECT 
    a.AssessorID,
    a.Name,
    COUNT(asmt.AssessmentID) AS TotalAssessments
FROM Assessor a
LEFT JOIN Assessment asmt ON a.AssessorID = asmt.AssessorID
GROUP BY a.AssessorID, a.Name;
