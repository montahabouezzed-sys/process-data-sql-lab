# Automotive Test Data – SQL Modeling & Analysis Project

This project demonstrates a complete, reproducible SQL workflow using **DuckDB**.  
It includes data modeling, database setup, validation, and analytical queries on a synthetic automotive test dataset.

The goal is to show clean SQL engineering practices:
- structured project layout  
- reproducible database creation  
- data validation  
- analysis queries  
- both a **single-file DuckDB database** and a **full export directory** for transparency  

---

## 📁 Project Structure
automotive.duckdb/        # Exported database directory (CSV + schema + load scripts)
my_database.duckdb        # Single-file DuckDB database (ready to open)
data/                     # Raw CSV files (source data)
schema/                   # Entity-relationship and schema definitions
sql/
setup/                  # Create tables, import data, create indexes
validation/             # Data quality checks
analysis/               # Analytical SQL queries
notebooks/                # (Optional, next step) Jupyter notebooks for exploration
queries/                  # Additional SQL queries
README.md                 # Project documentation


---

## 🚀 How to Reproduce the Database (from SQL scripts)

If you want to build the database from scratch:

1. Open a terminal in the project root.
2. Start DuckDB: duckdb
3. Run the setup scripts:
.read sql/setup/01_create_tables.sql
.read sql/setup/02_import_data.sql
.read sql/setup/03_create_indexes.sql


4. Confirm tables exist:
SHOW TABLES;

---

## 🧪 Data Validation

The project includes a full validation suite to ensure data quality:
.read sql/validation/run_all_validations.sql

This checks:
- table existence  
- foreign key consistency  
- timestamp ranges  
- row counts  
- sensor type consistency  

---

## 📊 Running Analysis Queries

Example:
.read sql/analysis/01_anomaly_counts_by_component.sql

Other analysis queries are available in the `sql/analysis/` folder.

---

## 🗄️ Using the Provided DuckDB Database

You can skip setup and open the ready-made database:
duckdb my_database.duckdb


This file contains:
- all tables  
- imported data  
- indexes  
- ready for analysis  

---

## 📦 Using the Exported Database Directory

The folder `automotive.duckdb/` contains:
- CSV files for each table  
- `schema.sql` (CREATE TABLE statements)  
- `load.sql` (COPY statements)

To reconstruct the database from the export:
duckdb
.read automotive.duckdb/schema.sql
.read automotive.duckdb/load.sql


---

## 📝 Notes

- The project is designed to be fully reproducible.
- All SQL scripts are modular and can be run independently.
- The DuckDB file and export directory are included for convenience and transparency.

---

## 📚 Future Work

- Add a Power BI or DuckDB + Python notebook for visualization  
- Add more advanced analysis queries  
- Add ERD diagram to `/schema`  

---

## 👤 Author

Created by **Montaha Bouezzeddine**  
Focused on SQL modeling, data validation, and reproducible data workflows.



