SELECT 
    tr.test_run_id,
    v.model AS vehicle_model,
    c.component_name,
    tr.start_time,
    tr.end_time,
    COUNT(sr.reading_id) AS total_readings,
    COUNT(a.anomaly_id) AS total_anomalies
FROM test_runs tr
LEFT JOIN vehicles v ON tr.vehicle_id = v.vehicle_id
LEFT JOIN components c ON tr.component_id = c.component_id
LEFT JOIN sensor_readings sr ON tr.test_run_id = sr.test_run_id
LEFT JOIN anomalies a ON tr.test_run_id = a.test_run_id
GROUP BY tr.test_run_id, v.model, c.component_name
ORDER BY tr.test_run_id;

