CREATE INDEX idx_test_runs_vehicle ON test_runs(vehicle_id);
CREATE INDEX idx_test_runs_component ON test_runs(component_id);
CREATE INDEX idx_sensor_readings_run ON sensor_readings(test_run_id);
CREATE INDEX idx_anomalies_run ON anomalies(test_run_id);
