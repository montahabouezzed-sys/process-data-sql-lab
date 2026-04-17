-- Load vehicles
INSERT INTO vehicles
SELECT * FROM read_csv_auto('data/raw/vehicles.csv');

-- Load components
INSERT INTO components
SELECT * FROM read_csv_auto('data/raw/components.csv');

-- Load test runs
INSERT INTO test_runs
SELECT * FROM read_csv_auto('data/raw/test_runs.csv');

-- Load sensor readings
INSERT INTO sensor_readings
SELECT * FROM read_csv_auto('data/raw/sensor_readings.csv');

-- Load anomalies
INSERT INTO anomalies
SELECT * FROM read_csv_auto('data/raw/anomalies.csv');
