CREATE TABLE anomalies(anomaly_id INTEGER, test_run_id INTEGER, "timestamp" TIMESTAMP, anomaly_type VARCHAR, severity VARCHAR, description VARCHAR);;
CREATE TABLE components(component_id INTEGER, component_name VARCHAR, category VARCHAR, supplier VARCHAR, production_date DATE);;
CREATE TABLE sensor_readings(reading_id INTEGER, test_run_id INTEGER, "timestamp" TIMESTAMP, sensor_type VARCHAR, "value" FLOAT);;
CREATE TABLE test_runs(test_run_id INTEGER, vehicle_id INTEGER, component_id INTEGER, start_time TIMESTAMP, end_time TIMESTAMP, "operator" VARCHAR, ambient_temp FLOAT, notes VARCHAR);;
CREATE TABLE vehicles(vehicle_id INTEGER, model VARCHAR, "year" INTEGER, drivetrain VARCHAR);;
CREATE INDEX idx_anomalies_run ON anomalies(test_run_id);;
CREATE INDEX idx_sensor_readings_run ON sensor_readings(test_run_id);;
CREATE INDEX idx_test_runs_component ON test_runs(component_id);;
CREATE INDEX idx_test_runs_vehicle ON test_runs(vehicle_id);;

