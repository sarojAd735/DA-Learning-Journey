# 📊 Learning Journey – Daily Mini Projects

## 📌 About This Repository
This repository documents my **daily learning journey** through hands-on mini projects built on **real-world datasets**.  
The focus is on **applied learning**—using tools and techniques in practical scenarios to strengthen analytical thinking and problem-solving skills.

The **first 5 days** focus on **intermediate-level Excel**, emphasizing analysis, business use cases, and insight generation rather than basic functionality.

---

## 🎯 Objectives
- Apply Excel in real-world, business-oriented scenarios  
- Strengthen analytical and problem-solving skills  
- Build structured mini projects daily  
- Document insights and decision-making approaches  

---

# 🟢 Phase 1 – Applied Excel (Days 1–5)

## 📘 Day 1: Data Profiling & Advanced Cleaning
**Focus:** Understanding data quality and structure  

**Key Concepts:**
- Data profiling (row counts, null checks, uniqueness)  
- Removing duplicates with business rules  
- Handling missing data logically (not blindly)  
- Text normalization (TRIM, CLEAN, case handling)  
- Date and number standardization  

📂 File: `Clean_HealthDataset.csv`

---

## 📘 Day 2 – Key Insights (Excel Analysis)
- Total patient records analyzed: **49,999**
- Average billing amount: **$25,555.26**
- Average length of hospital stay (LOS): **15.5 days**
- Emergency admissions: **16,388 (32.8%)**
- Non-emergency admissions: **33,611 (67.2%)**
- Distinct medical conditions observed: **6**
- High-risk patients (Age > 60 & Billing > 20,000): **22.6%**

**Data observations:**
- Hospital and doctor counts are unusually high relative to patient count, suggesting synthetic or record-level identifiers.
- Billing averages across admission types are similar, indicating evenly distributed billing behavior in the dataset.

📂 File: `Day02.csv`

---

## 📘 Day 3: Pivot Tables for Analytical Insights
**Focus:** Summarizing and analyzing data effectively  

- Built multiple pivot tables to analyze billing, patient volume, and length of stay
- Compared average and total billing across admission types
- Analyzed LOS patterns by admission urgency
- Evaluated high-risk patient distribution across age groups
- Added interactive slicers for dynamic filtering

**Key Insights:**
- Billing per patient is consistent across admission types
- Emergency admissions show the highest average LOS
- High-risk patients are predominantly Adults and Seniors
- High billing category represents the majority of patient records

📂 File: `day03_pivot_analysis.xlsx`

---

## 📘 Day 4: Excel Dashboards & Visualization
**Focus:** Communicating insights clearly  

**Key Concepts:**
- Chart selection based on insight type  
- Pivot charts & dynamic visuals  
- Conditional formatting for storytelling  
- Interactive elements (slicers, filters)  
- KPI-style summary views  

📂 File: `day04_excel_dashboard.xlsx`

---

## 📘 Day 5: End-to-End Excel Case Study
**Focus:** Real-world mini project  

**Project Scope:**
- Dashboard or summary insights sheet  
- Key findings & recommendations  

📂 File: `day05_excel_case_study.xlsx`

---

## 🧠 Key Learnings
- Translating raw data into meaningful insights  
- Applying business logic using Excel formulas  
- Using Pivot Tables as an analytical tool, not just summaries  
- Presenting insights in a clear and structured manner  

(This section will evolve as more projects are added.)

---

# 🔵 Phase 2 – SQL (PostgreSQL)

SQL analysis is performed on the **cleaned dataset generated during the Excel phase** to ensure consistency and analytical reliability.

---

## 📘 Day 6: PostgreSQL Setup & Data Ingestion
**Focus:** Database initialization and loading the cleaned dataset into PostgreSQL

**Work Completed:**
- Created a dedicated schema: `healthcare`
- Created an analytics-ready table: `healthcare.healthcare_patients`
- Imported the cleaned CSV file into PostgreSQL using `COPY`
- Verified successful ingestion (row count and basic checks)

**Files:**
- `sql/01_schema.sql`
- `sql/02_load.sql`
- `sql/03_verify.sql`

---

## 🛠 Tools Used
- Microsoft Excel  
- PostgreSQL  
- pgAdmin  
- Real-world / open datasets  

---

## 🚀 Next Steps
This repository will continue to grow with additional tools and technologies in upcoming days, building on the analytical foundation established here.

More updates coming soon 🚀
