CREATE TABLE vehicles (
    vehicle_id INTEGER PRIMARY KEY,
    model TEXT NOT NULL,
    year INTEGER,
    drivetrain TEXT CHECK (drivetrain IN ('EV', 'Hybrid', 'Diesel', 'Petrol'))
);


CREATE TABLE components (
    component_id INTEGER PRIMARY KEY,
    component_name TEXT NOT NULL,
    category TEXT,
    supplier TEXT,
    production_date DATE
);

CREATE TABLE test_runs (
    test_run_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER,
    component_id INTEGER,
    start_time DATETIME,
    end_time DATETIME,
    operator TEXT,
    ambient_temp REAL,
    notes TEXT,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (component_id) REFERENCES components(component_id)
);

CREATE TABLE sensor_readings (
    reading_id INTEGER PRIMARY KEY,
    test_run_id INTEGER,
    timestamp DATETIME,
    sensor_type TEXT,
    value REAL,
    FOREIGN KEY (test_run_id) REFERENCES test_runs(test_run_id)
);

CREATE TABLE anomalies (
    anomaly_id INTEGER PRIMARY KEY,
    test_run_id INTEGER,
    timestamp DATETIME,
    anomaly_type TEXT,
    severity TEXT CHECK (severity IN ('low', 'medium', 'high')),
    description TEXT,
    FOREIGN KEY (test_run_id) REFERENCES test_runs(test_run_id)
);
