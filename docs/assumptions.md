# Assumptions

To keep the model focused and manageable, several simplifying assumptions were made. These assumptions reflect common patterns in insurance data but are intentionally streamlined for clarity.

---

## Customer & Policy Assumptions
- A customer can hold multiple policies.
- Each policy belongs to exactly one customer.
- Policies have a defined start and end date.
- Policy types are simplified (e.g., Home, Auto, Health).

---

## Claims Assumptions
- A claim is always associated with a single policy.
- Claims have a status (e.g., Open, Closed, Pending).
- Claim amounts represent the total claimed value, not necessarily the amount paid.

---

## Payments Assumptions
- A claim may have zero, one, or many payments.
- Payments represent disbursements made to settle a claim.
- Payment methods are simplified (e.g., Bank Transfer, Cheque).

---

## Assessments Assumptions
- A claim may undergo multiple assessments.
- Each assessment is performed by an assessor.
- Assessment outcomes are simplified (e.g., Approved, Rejected, Needs Review).

---

## General Modelling Assumptions
- All IDs are represented as integers for simplicity.
- No historical versioning (slowly changing dimensions) is included.
- No regulatory or compliance fields are included.
- No external systems (CRM, billing, underwriting) are modelled.
- The model is designed for clarity, not production‑level completeness.

These assumptions allow the project to focus on demonstrating core modelling skills without unnecessary complexity.
