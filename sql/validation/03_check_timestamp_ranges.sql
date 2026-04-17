-- Sensor readings must fall inside test run windows
SELECT sr.reading_id, sr.test_run_id
FROM sensor_readings sr
JOIN test_runs tr ON sr.test_run_id = tr.test_run_id
WHERE sr.timestamp < tr.start_time
   OR sr.timestamp > tr.end_time;

-- Anomalies must fall inside test run windows
SELECT a.anomaly_id, a.test_run_id
FROM anomalies a
JOIN test_runs tr ON a.test_run_id = tr.test_run_id
WHERE a.timestamp < tr.start_time
   OR a.timestamp > tr.end_time;
