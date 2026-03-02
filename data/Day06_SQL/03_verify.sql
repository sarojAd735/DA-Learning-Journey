-- Verify row count
SELECT COUNT(*) AS total_records
FROM "Healthcare".healthcare_patients;

-- Quick data preview
SELECT *
FROM "Healthcare".healthcare_patients
LIMIT 10;

-- Basic null check
SELECT
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_age,
    SUM(CASE WHEN billingamount IS NULL THEN 1 ELSE 0 END) AS null_billing
FROM "Healthcare".healthcare_patients;