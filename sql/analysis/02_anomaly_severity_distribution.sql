SELECT 
    severity,
    COUNT(*) AS count
FROM anomalies
GROUP BY severity
ORDER BY count DESC;

