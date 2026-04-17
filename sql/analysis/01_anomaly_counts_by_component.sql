SELECT 
    c.component_name,
    COUNT(a.anomaly_id) AS anomaly_count
FROM anomalies a
JOIN test_runs tr ON a.test_run_id = tr.test_run_id
JOIN components c ON tr.component_id = c.component_id
GROUP BY c.component_name
ORDER BY anomaly_count DESC;

