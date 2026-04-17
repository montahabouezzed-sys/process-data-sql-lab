SELECT 
    c.component_name,
    COUNT(a.anomaly_id) AS anomaly_count
FROM components c
JOIN test_runs tr ON c.component_id = tr.component_id
JOIN anomalies a ON tr.test_run_id = a.test_run_id
GROUP BY c.component_name
ORDER BY anomaly_count DESC
LIMIT 5;

