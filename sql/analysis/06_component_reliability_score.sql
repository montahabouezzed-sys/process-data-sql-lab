/* 
Component Reliability Score
Formula: reliability = 1 / (1 + number_of_anomalies)
*/

SELECT 
    c.component_name,
    COUNT(a.anomaly_id) AS anomaly_count,
    ROUND(1.0 / (1 + COUNT(a.anomaly_id)), 3) AS reliability_score
FROM components c
LEFT JOIN test_runs tr ON c.component_id = tr.component_id
LEFT JOIN anomalies a ON tr.test_run_id = a.test_run_id
GROUP BY c.component_name
ORDER BY reliability_score DESC;
