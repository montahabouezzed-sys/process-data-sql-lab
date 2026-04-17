SELECT 
    sr1.test_run_id,
    AVG(sr1.value) AS avg_temperature,
    AVG(sr2.value) AS avg_vibration
FROM sensor_readings sr1
JOIN sensor_readings sr2 
    ON sr1.test_run_id = sr2.test_run_id
   AND sr1.timestamp = sr2.timestamp
WHERE sr1.sensor_type = 'temperature'
  AND sr2.sensor_type = 'vibration'
GROUP BY sr1.test_run_id;

