# Buster Block ETL Project – Group 1 (Praise, Umair, Alex I, Jake D & Nasif)

## 1. Overview
A complete ETL pipeline built by the Buster Block team to extract, clean, transform
& analyse customer transaction data.

## 2. Architecture Diagram
![ETL Pipeline](images/etl_diagram.png)

## 3. Tech Stack
- Python - Pandas, NumPy, Matplotlib, Seaborn (Data cleaning, Transformation, Analysis & visualisation)
- SQLAlchemy & psycopg2 (Connecting Python to PostgreSQL & Executing SQL Queries)
- SQL (Querying & Extracting data)
- dotenv (Environment variable Management)
- PostgreSQL (Source Database)
- Jupyter Notebooks (Data Exploration, Analysis & Visualisation)
- Git & GitHub (Version Control & Collaboration)

## 4. ETL Pipeline

### 🔹 Extract
- Connect to online Postgres database  
- Run SQL queries  
- Save raw data into `data/`  

### 🔹 Transform
- Clean invalid rows  
- Normalise schema  
- Create new calculated fields  
- Join customers + transactions  
- Save `high_value_customers.csv` to `data/processed/`

### 🔹 Load
- Load transformed data into target PostgreSQL database

---

## 5. Data Analysis
See full notebook:  
➡️ [`analysis.ipynb`](notebooks/analysis.ipynb)

Include images here:

![Customer Spend](images/customer_spend.png)

---

## 6. Key Insights
- 🔥 Insight 1  
- 🔥 Insight 2  
- 🔥 Insight 3  

---

## 7. Future Improvements
- Real-time streaming with Kinesis  
- Airflow or Step Functions orchestration  
- Deploy as full analytics pipeline on AWS  

---

## 8. Presentation
- 📄 PDF: [`final_presentation.pdf`](presentations/final_presentation.pdf)  
- 🎞 Google Slides: https://docs.google.com/presentation/xxxxx  

---

## 9. Team
- Praise  
- Nasif  
- Alex  
- Umair  
- Jake  