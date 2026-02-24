# Conceptual Data Model

The conceptual model represents the high‑level business entities involved in the insurance claims process and the relationships between them. It focuses on understanding the domain without introducing technical details such as attributes or data types.

---

## 🎯 Purpose
To capture the essential business objects and how they interact within a simplified insurance environment.

---

## 🧱 Core Entities
- **Customer** – the individual or organisation holding insurance policies.
- **Policy** – an insurance product purchased by a customer.
- **Claim** – a request for compensation under a policy.
- **Payment** – a financial disbursement made to settle a claim.
- **Assessment** – an evaluation of a claim’s validity and value.
- **Assessor** – the person responsible for performing assessments.

---

## 🔗 Relationships
- A **Customer** can hold **many Policies**.
- A **Policy** can have **many Claims**.
- A **Claim** can have **many Payments**.
- A **Claim** can have **many Assessments**.
- An **Assessor** can perform **many Assessments**.

---

## 📘 Diagram
A visual ERD is included in:
docs/erd-conceptual.png

---

## ✔️ Summary
This conceptual model forms the foundation for the logical and physical models by identifying the key business objects and their relationships in the insurance claims lifecycle.
