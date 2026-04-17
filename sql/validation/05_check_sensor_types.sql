-- Check that sensor types match component categories
SELECT DISTINCT 
    c.component_name, 
    c.category,
    sr.sensor_type
FROM sensor_readings sr
JOIN test_runs tr ON sr.test_run_id = tr.test_run_id
JOIN components c ON tr.component_id = c.component_id
ORDER BY c.component_name, sr.sensor_type;
