-- Create vehicles table
CREATE TABLE vehicles (
    vehicle_id INTEGER,
    model TEXT,
    year INTEGER,
    drivetrain TEXT
);

-- Create components table
CREATE TABLE components (
    component_id INTEGER,
    component_name TEXT,
    category TEXT,
    supplier TEXT,
    production_date DATE
);

-- Create test_runs table
CREATE TABLE test_runs (
    test_run_id INTEGER,
    vehicle_id INTEGER,
    component_id INTEGER,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    operator TEXT,
    ambient_temp REAL,
    notes TEXT
);

-- Create sensor_readings table
CREATE TABLE sensor_readings (
    reading_id INTEGER,
    test_run_id INTEGER,
    timestamp TIMESTAMP,
    sensor_type TEXT,
    value REAL
);

-- Create anomalies table
CREATE TABLE anomalies (
    anomaly_id INTEGER,
    test_run_id INTEGER,
    timestamp TIMESTAMP,
    anomaly_type TEXT,
    severity TEXT,
    description TEXT
);
