# SQL Validation Suite

This folder contains integrity checks for the automotive test dataset.
Each script validates a different aspect of the relational model.

## Files

### 01_check_tables_exist.sql
Ensures all expected tables are present in the database.

### 02_check_foreign_keys.sql
Validates referential integrity between:
- test_runs → vehicles
- test_runs → components
- sensor_readings → test_runs
- anomalies → test_runs

### 03_check_timestamp_ranges.sql
Checks that:
- sensor readings occur within their test run window
- anomalies occur within their test run window

### 04_check_row_counts.sql
Verifies expected row counts for each table.

### 05_check_sensor_types.sql
Ensures sensor types match the component categories used in each test run.

### run_all_validations.sql
Runs all validation scripts in sequence.

## How to run (DuckDB)

```sql
.read sql/validation/run_all_validations.sql
