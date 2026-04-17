# SQL Analysis Suite

This folder contains analytical SQL queries built on top of the validated
automotive test dataset. These queries demonstrate how to extract insights
from vehicle test runs, component behavior, sensor readings, and anomaly
events.

Each script focuses on a specific analytical question commonly used in
engineering data analysis, reliability studies, and system performance
evaluation.

---

## 📂 Files and Purpose

### 01_anomaly_counts_by_component.sql
Counts how many anomalies occurred for each component across all test runs.
Useful for identifying components with higher failure or instability rates.

### 02_anomaly_severity_distribution.sql
Summarizes anomaly severity levels (low, medium, high) to understand the
overall risk profile of the dataset.

### 03_average_sensor_values_by_component.sql
Computes average sensor values (temperature, voltage, current, vibration,
pressure) grouped by component. Helps compare component behavior under test.

### 04_temperature_vs_vibration.sql
Correlates temperature and vibration readings within the same timestamps.
Useful for detecting thermal–mechanical interactions.

### 05_test_run_summary.sql
Provides a compact overview of each test run, including:
- vehicle model
- component tested
- number of sensor readings
- number of anomalies

### 06_component_reliability_score.sql
Calculates a simple reliability metric:
This gives a quick comparative score across components.

### 07_vehicle_performance_overview.sql
Aggregates anomalies and test runs per vehicle model to identify which
vehicles exhibit more issues during testing.

### 08_anomaly_timeline.sql
Chronological view of all anomalies across all test runs. Useful for
time‑based diagnostics and event correlation.

### 09_sensor_outlier_detection.sql
Detects outlier sensor readings using a z‑score approach. Helps identify
unexpected spikes or faulty sensor behavior.

### 10_top_risky_components.sql
Lists the components with the highest anomaly counts. Useful for prioritizing
engineering investigation or redesign.

---

## ▶️ How to Run (DuckDB)

From the project root:

```sql
.read sql/setup/import_data.sql
.read sql/analysis/01_anomaly_counts_by_component.sql
or
.read sql/analysis/<filename>.sql


