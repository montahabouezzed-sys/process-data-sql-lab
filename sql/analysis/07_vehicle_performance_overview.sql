SELECT 
    v.model,
    COUNT(tr.test_run_id) AS total_runs,
    COUNT(a.anomaly_id) AS total_anomalies,
    ROUND(COUNT(a.anomaly_id) * 1.0 / COUNT(tr.test_run_id), 2) AS anomalies_per_run
FROM vehicles v
LEFT JOIN test_runs tr ON v.vehicle_id = tr.vehicle_id
LEFT JOIN anomalies a ON tr.test_run_id = a.test_run_id
GROUP BY v.model
ORDER BY anomalies_per_run DESC;
