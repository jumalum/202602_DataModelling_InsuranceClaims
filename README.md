# Insurance Claims Data Model  
*A conceptual → logical → physical data modelling project aligned with real insurance workflows.*

## 📌 Overview
This project demonstrates an end‑to‑end data modelling workflow for a simplified insurance claims environment. It includes conceptual, logical, and physical data models, a full SQL schema, a data dictionary, and example SQL queries that show how the model supports reporting and analytics.

The project is designed to reflect the responsibilities of a Junior Data Modeller, including:
- Understanding business processes  
- Translating requirements into structured data models  
- Designing and documenting data structures  
- Supporting data analysis and reporting  

---

## 🏢 Business Context
Insurance organisations rely on structured, well‑designed data models to manage customers, policies, claims, payments, and assessments. A clear data model enables:
- Accurate reporting  
- Faster claims processing  
- Better risk analysis  
- Consistent data quality across systems  

This project models a simplified version of these processes.

---

## 🧩 Project Structure
```
202602_DataModelling_InsuranceClaims/
│
├── README.md
├── docs/
├── models/
├── sql/
├── data/
├── notebooks/
└── assets/
```
Each folder contains a specific part of the modelling workflow (see repository for details).


---

## 🧱 Modelling Approach

### 1. Conceptual Model  
High‑level entities and relationships:
- Customer  
- Policy  
- Claim  
- Payment  
- Assessment  
- Assessor  

### 2. Logical Model  
Attributes, keys, cardinality, and business rules are added to define structure and meaning.

### 3. Physical Model  
A full SQL schema implements the logical model in a relational database.

---

## 📊 Entity‑Relationship Diagrams
Diagrams for the conceptual, logical, and physical models are included in the `docs/` and `assets/` folders.

---

## 🗂️ Data Dictionary
A complete data dictionary describing every table, field, datatype, and business meaning is included in `docs/data-dictionary.md`.

---

## 🧪 Sample SQL Queries
The `sql/` folder contains example queries demonstrating how the model supports:
- Claims per customer  
- Total payments per claim  
- Claims by status  
- Policy‑level reporting  

---

## 🧬 Synthetic Data
The `data/` folder includes small synthetic datasets used to test the schema and queries.

---

## 📓 Notebook
A Jupyter notebook (`notebooks/`) demonstrates:
- Loading synthetic data  
- Running SQL queries  
- Exploring the model interactively  

---

## 🎯 Why This I built this:
This project showcases practical skills required for a Junior Data Modeller role:
- Understanding business processes  
- Designing structured data models  
- Writing SQL schemas  
- Documenting data structures clearly  
- Producing analysis‑ready datasets  

It demonstrates the ability to translate business rules into technical artefacts — a core expectation for data modelling roles.

---

## 🚀 Potential Future Enhancements
- Add dimensional modelling (star schema)  
- Introduce Data Vault components  
- Build a small dashboard using the model  
- Add automated schema validation tests  

---

## 📬 Contact
If you'd like to discuss the project:  
**Jaime Power**  
Melbourne, VIC  
[LinkedIn](https://linkedin.com/in/jaimempower/) • [Github](https://github.com/jumalum)
