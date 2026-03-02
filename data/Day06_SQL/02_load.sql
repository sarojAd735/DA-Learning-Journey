-- Load cleaned CSV into PostgreSQL

\copy "Healthcare".healthcare_patients(
  name, age, gender, blood_type, medicalcondition, admission_date, doctor, hospital,
  insurance_provider, billingamount, room_number, admission_type, dischargedate,
  medication, testresults, billing_flag, age_group, billing_catagory,
  lengthofstay, high_risk_patient_flag
)
FROM 'path/to/healthcare_cleaned.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', QUOTE '"');