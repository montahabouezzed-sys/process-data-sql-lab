SELECT 
    c.component_name,
    sr.sensor_type,
    AVG(sr.value) AS avg_value
FROM sensor_readings sr
JOIN test_runs tr ON sr.test_run_id = tr.test_run_id
JOIN components c ON tr.component_id = c.component_id
GROUP BY c.component_name, sr.sensor_type
ORDER BY c.component_name, sr.sensor_type;

