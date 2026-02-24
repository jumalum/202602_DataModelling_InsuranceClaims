# Modelling Approach

This project follows a structured, industry‑aligned modelling workflow that moves from high‑level understanding to detailed implementation. The approach mirrors the expectations of a Junior Data Modeller working within a data team.

---

## 1. Conceptual Modelling

The conceptual model identifies the major business entities and the relationships between them. At this stage, the focus is on understanding the domain rather than technical implementation.

Key questions addressed:
- What are the core business objects?
- How do they relate to each other?
- What processes connect them?

The conceptual model for this project includes:
- Customer
- Policy
- Claim
- Payment
- Assessment
- Assessor (optional)

---

## 2. Logical Modelling

The logical model adds structure and detail to the conceptual model. This includes:
- Attributes for each entity  
- Primary keys  
- Foreign keys  
- Cardinality  
- Business rules  
- Data constraints  

The logical model is technology‑agnostic but precise enough to be implemented in any relational database.

---

## 3. Physical Modelling

The physical model translates the logical design into a concrete SQL schema. This includes:
- Table definitions  
- Data types  
- Constraints  
- Indexes (optional)  

The physical model is implemented using standard SQL to ensure portability and clarity.

---

## 4. Validation Through SQL Queries

To demonstrate the model’s usefulness, a set of SQL queries is included. These queries show how the schema supports:
- Reporting  
- Aggregations  
- Joins across entities  
- Claims and payment analysis  

---

## 5. Documentation

Clear documentation is essential for data modelling work. This project includes:
- Business context  
- Modelling rationale  
- Assumptions  
- Data dictionary  
- ERD diagrams  

This mirrors real‑world expectations for junior data roles, where communication and clarity are as important as technical skill.
