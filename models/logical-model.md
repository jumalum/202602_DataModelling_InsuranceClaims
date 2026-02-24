# Logical Data Model

The logical model expands the conceptual model by defining attributes, primary keys, foreign keys, and cardinality. It remains technology‑agnostic but provides enough structure to translate into a physical SQL schema.

---

## 🧱 Entities, Attributes & Keys

### **Customer**
- CustomerID (PK)
- FirstName
- LastName
- DOB
- Email
- Phone

### **Policy**
- PolicyID (PK)
- CustomerID (FK → Customer.CustomerID)
- PolicyType
- StartDate
- EndDate
- PremiumAmount

### **Claim**
- ClaimID (PK)
- PolicyID (FK → Policy.PolicyID)
- ClaimDate
- ClaimType
- ClaimStatus
- ClaimAmount

### **Payment**
- PaymentID (PK)
- ClaimID (FK → Claim.ClaimID)
- PaymentDate
- PaymentAmount
- PaymentMethod

### **Assessment**
- AssessmentID (PK)
- ClaimID (FK → Claim.ClaimID)
- AssessorID (FK → Assessor.AssessorID)
- AssessmentDate
- AssessmentOutcome
- Notes

### **Assessor**
- AssessorID (PK)
- Name
- CertificationLevel

---

## 🔗 Cardinality Summary
- Customer 1 → M Policy  
- Policy 1 → M Claim  
- Claim 1 → M Payment  
- Claim 1 → M Assessment  
- Assessor 1 → M Assessment  

---

## 📘 Diagram
A logical ERD is included in:
docs/erd-logical.png
---

## ✔️ Summary
The logical model defines the structure and rules of the data without tying it to a specific database technology. It is the blueprint for the physical SQL schema.
