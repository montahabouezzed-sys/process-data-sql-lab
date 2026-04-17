SELECT 
  (SELECT COUNT(*) FROM vehicles) AS vehicles,
  (SELECT COUNT(*) FROM components) AS components,
  (SELECT COUNT(*) FROM test_runs) AS test_runs,
  (SELECT COUNT(*) FROM sensor_readings) AS sensor_readings,
  (SELECT COUNT(*) FROM anomalies) AS anomalies;
