COPY anomalies FROM 'automotive.duckdb/anomalies.csv' (FORMAT 'csv', header 1, delimiter ',', quote '"');
COPY components FROM 'automotive.duckdb/components.csv' (FORMAT 'csv', header 1, delimiter ',', quote '"');
COPY sensor_readings FROM 'automotive.duckdb/sensor_readings.csv' (FORMAT 'csv', header 1, delimiter ',', quote '"');
COPY test_runs FROM 'automotive.duckdb/test_runs.csv' (FORMAT 'csv', header 1, delimiter ',', quote '"');
COPY vehicles FROM 'automotive.duckdb/vehicles.csv' (FORMAT 'csv', header 1, delimiter ',', quote '"');
