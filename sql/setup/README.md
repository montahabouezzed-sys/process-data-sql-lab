# SQL Setup Scripts

This folder contains the scripts required to create and initialize the
database used in the project. The setup layer ensures that the schema,
data, and indexes are created in a clean, reproducible way.

These scripts are designed for DuckDB, but the structure is general enough
to adapt to SQLite or other SQL engines if needed.

---

## 📂 Files and Purpose

### 01_create_tables.sql
Creates all database tables:
- vehicles  
- components  
- test_runs  
- sensor_readings  
- anomalies  

This script defines the schema and must be executed before importing data.

### 02_import_data.sql
Loads CSV files from `data/raw/` into the corresponding tables using
DuckDB’s `read_csv_auto` function.

This script assumes the following files exist:
- `data/raw/vehicles.csv`
- `data/raw/components.csv`
- `data/raw/test_runs.csv`
- `data/raw/sensor_readings.csv`
- `data/raw/anomalies.csv`

### 03_create_indexes.sql
Creates indexes to improve query performance, especially for joins and
analysis queries.

Indexes include:
- test_runs(vehicle_id)
- test_runs(component_id)
- sensor_readings(test_run_id)
- anomalies(test_run_id)

---

## ▶️ How to Run (DuckDB)

From the project root:

```sql
.read sql/setup/01_create_tables.sql
.read sql/setup/02_import_data.sql
.read sql/setup/03_create_indexes.sql
