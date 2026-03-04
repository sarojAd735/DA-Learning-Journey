________________________________________
	Total patient records

SELECT count(name) 
FROM healthcare.healthcare_patients
________________________________________
	Q2 -  Gender Distribution

SELECT gender , count(gender) 
from healthcare.healthcare_patients
GROUP by gender
________________________________________
	Q3 - Admission Type Distribution

SELECT admission_type, 
count(admission_type)
from healthcare.healthcare_patients
GROUP by admission_type
________________________________________
	Q4 - Average Billing

select avg(billingamount)  as avg_billing 
from healthcare.healthcare_patients
________________________________________
	Q5 - average billing amount for each admission type
select admission_type, avg(billingamount)  as avg_billing 
from healthcare.healthcare_patients 
Group by admission_type
________________________________________
	Q6 - Average Length of Stay

select avg(lengthofstay) 
from healthcare.healthcare_patients
________________________________________
	Q7 - High Risk Patient Count

select high_risk_patient_flag, 
count(high_risk_patient_flag)
from healthcare.healthcare_patients
Group by high_risk_patient_flag
________________________________________
	Q8 -  Medical Condition Distribution
SELECT medicalcondition, count(medicalcondition) as patient_count FROM healthcare.healthcare_patients
group by medicalcondition
________________________________________
	Q9 -  Top 5 Hospitals by patients count
SELECT hospital, COUNT(*) AS patient_count
FROM healthcare.healthcare_patients
GROUP BY hospital
ORDER BY patient_count desc
LIMIT 5;________________________________________
	Q10 - Highest Billing Patients
SELECT name, hospital, medicalcondition, billingamount 
from healthcare.healthcare_patients
order by billingamount desc
limit 10
