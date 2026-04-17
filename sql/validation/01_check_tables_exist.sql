-- Validate that all expected tables exist
SELECT name 
FROM sqlite_master 
WHERE type='table'
ORDER BY name;
