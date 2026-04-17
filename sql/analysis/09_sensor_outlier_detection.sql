WITH stats AS (
    SELECT 
        sensor_type,
        AVG(value) AS mean_val,
        STDDEV(value) AS std_val
    FROM sensor_readings
    GROUP BY sensor_type
)
SELECT 
    sr.*,
    (sr.value - s.mean_val) / s.std_val AS z_score
FROM sensor_readings sr
JOIN stats s ON sr.sensor_type = s.sensor_type
WHERE ABS((sr.value - s.mean_val) / s.std_val) > 3
ORDER BY z_score DESC;

