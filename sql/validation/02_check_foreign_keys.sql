-- test_runs → vehicles
SELECT tr.test_run_id
FROM test_runs tr
LEFT JOIN vehicles v ON tr.vehicle_id = v.vehicle_id
WHERE v.vehicle_id IS NULL;

-- test_runs → components
SELECT tr.test_run_id
FROM test_runs tr
LEFT JOIN components c ON tr.component_id = c.component_id
WHERE c.component_id IS NULL;

-- sensor_readings → test_runs
SELECT sr.reading_id
FROM sensor_readings sr
LEFT JOIN test_runs tr ON sr.test_run_id = tr.test_run_id
WHERE tr.test_run_id IS NULL;

-- anomalies → test_runs
SELECT a.anomaly_id
FROM anomalies a
LEFT JOIN test_runs tr ON a.test_run_id = tr.test_run_id
WHERE tr.test_run_id IS NULL;
