SELECT 
    test_run_id,
    timestamp,
    anomaly_type,
    severity
FROM anomalies
ORDER BY timestamp;

