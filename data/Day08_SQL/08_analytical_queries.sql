1.
What percentage of patients fall under each admission type?

Answer: 
SELECT admission_type,
count(*) as patients_count,
ROUND
(count(*) * 100.0 / (select count(*) from healthcare.healthcare_patients),2) as percentage
FROM healthcare.healthcare_patients
group by admission_type
________________________________________

2.
What is the average billing amount for each age group?

Answer:
SELECT age_group, 
round(avg(billingamount), 2) as Average_bill
FROM healthcare.healthcare_patients
group by age_group
order by Average_bill desc
________________________________________

3.
How many high-risk patients exist in each age group?

Answer:

SELECT age_group, count(*) as highrisk_count
FROM healthcare.healthcare_patients
where high_risk_patient_flag = 'High Risk'
group by age_group
________________________________________

4.
Which medical conditions generate the highest average billing?


Answer:
SELECT medicalcondition,
round(avg(billingamount), 2) as Average_Bill
FROM healthcare.healthcare_patients
group by medicalcondition
order by Average_bill desc
________________________________________

5.
Find hospitals where the average billing amount exceeds $30,000.

Answer:

SELECT hospital,
avg(billingamount) as average_bill
FROM healthcare.healthcare_patients
group by hospital
having avg(billingamount)>30000
order by average_bill desc
________________________________________

6.
What is the average hospital stay for each admission type?

Answer:

SELECT admission_type,
round(avg(lengthofstay), 2) as avg_los
FROM healthcare.healthcare_patients
group by admission_type
________________________________________


7.
What percentage of all patients are classified as High Risk?

Answer:

select
count(*) filter 
(
where high_risk_patient_flag = 'High Risk'
) * 100
/
count(*)
as hig_risk_p
FROM healthcare.healthcare_patients
________________________________________

8.
Which 5 doctors treated the most patients?


Answer:

select doctor, count(*) as patient_count
FROM healthcare.healthcare_patients
group by doctor
order by patient_count desc
limit 5
________________________________________

9.
How many patients fall into each billing category?

Answer:

select billing_catagory, count(*) as patient_count
FROM healthcare.healthcare_patients
group by billing_catagory
order by patient_count desc
________________________________________
10.
How many patients exist for each Admission Type AND Age Group combination?

Answer:

select admission_type, age_group,
count(*) as patient_count
FROM healthcare.healthcare_patients
group by admission_type, age_group
order by admission_type, age_group desc
