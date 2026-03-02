-- Create schema
CREATE SCHEMA IF NOT EXISTS healthcare;

-- Create main table
CREATE TABLE healthcare.healthcare_patients (
    patient_record_id BIGSERIAL PRIMARY KEY,
    name TEXT,
    age INT,
    gender VARCHAR(20),
    blood_type VARCHAR(10),
    medicalcondition TEXT,
    admission_date DATE,
    doctor TEXT,
    hospital TEXT,
    insurance_provider TEXT,
    billingamount NUMERIC(12,2),
    room_number INT,
    admission_type VARCHAR(20),
    dischargedate DATE,
    medication TEXT,
    testresults TEXT,
    billing_flag VARCHAR(20),
    age_group VARCHAR(20),
    billing_catagory VARCHAR(20),
    lengthofstay INT,
    high_risk_patient_flag VARCHAR(20)
);