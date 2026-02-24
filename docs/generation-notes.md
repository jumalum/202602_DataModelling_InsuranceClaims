# Synthetic Data Generation Notes

This folder contains small synthetic datasets used to test the SQL schema and queries.  
The data is intentionally simple, clean, and non‑sensitive.

---

## 📁 Files

### `customers.csv`
| CustomerID | FirstName | LastName | DOB | Email | Phone |

### `policies.csv`
| PolicyID | CustomerID | PolicyType | StartDate | EndDate | PremiumAmount |

### `claims.csv`
| ClaimID | PolicyID | ClaimDate | ClaimType | ClaimStatus | ClaimAmount |

### `payments.csv`
| PaymentID | ClaimID | PaymentDate | PaymentAmount | PaymentMethod |

### `assessors.csv`
| AssessorID | Name | CertificationLevel |

### `assessments.csv`
| AssessmentID | ClaimID | AssessorID | AssessmentDate | AssessmentOutcome | Notes |

---

## 🧪 Data Generation Guidelines

- IDs should be small integers (1–10 range).  
- Use realistic but fictional names and dates.  
- Ensure referential integrity (e.g., Claim.PolicyID must exist in policies.csv).  
- Keep datasets small (5–15 rows per file) for readability.  
- Avoid unnecessary complexity — the goal is clarity.

---

## ✔️ Example Row Snippets

### customers.csv
1,John,Doe,1985-04-12,john.doe@example.com,0400123456
2,Sarah,Nguyen,1990-09-30,sarah.nguyen@example.com,0400654321

### policies.csv
101,1,Home,2024-01-01,2024-12-31,120.00
102,2,Auto,2024-02-15,2025-02-14,95.50

### claims.csv
1001,101,2024-03-10,Fire,Open,5000.00
1002,102,2024-04-22,Collision,Closed,1200.00


### payments.csv
5001,1002,2024-05-01,1200.00,Bank Transfer


### assessors.csv
9001,Emily Carter,Senior
9002,James Lee,Junior


### assessments.csv
3001,1001,9001,2024-03-12,Needs Review,Initial inspection completed.
