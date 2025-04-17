# 📊 Yahoo Finance Data Pipeline using Python, Pandas, and SQL/Snowflake

Welcome to this data pipeline project, where we extract financial data from **Yahoo Finance**, process it using **Python** and **Pandas**, and transfer it to **SQL Server** or **Snowflake** for further **data analysis**.

![Pipeline Architecture](./Copy%20of%20Copy%20of%20External%20Stage.jpg)

---

## 🚀 Project Overview

This project demonstrates the complete ETL (Extract, Transform, Load) process of financial data sourced from Yahoo Finance. Here's a brief of what happens:

1. **Web Scraping** 📥  
   - Extracts real-time financial data from Yahoo Finance using Python.

2. **Data Manipulation** 🔧  
   - Utilizes `pandas` for cleaning, transforming, and preparing data for storage.

3. **Data Transfer** 🔄  
   - Uses Python scripts to transfer structured data into either:
     - **SQL Server**
     - **Snowflake**

4. **Data Analysis** 📈  
   - Enables advanced analytics and reporting through the respective data platforms.

---

## 🛠️ Technologies Used

- **Python** 🐍  
  Core programming language for scraping and scripting data workflows.

- **Pandas** 🐼  
  For data transformation and preparation.

- **SQL Server** 🛢️  
  Traditional RDBMS for enterprise-grade data warehousing.

- **Snowflake** ❄️  
  Cloud-native data platform for scalable storage and analytics.

- **Yahoo Finance** 🔍  
  Public data source for financial datasets.

---

## 📂 Project Structure

```plaintext
├── data/                    # Optional directory for saving scraped CSVs
├── scripts/                 # Python scripts for scraping, transformation, and loading
│   ├── scrape_yahoo.py
│   ├── transform_data.py
│   ├── load_to_sqlserver.py
│   └── load_to_snowflake.py
├── utils/                   # Utility functions for database connection etc.
├── README.md                # This file
└── requirements.txt         # Python dependencies
