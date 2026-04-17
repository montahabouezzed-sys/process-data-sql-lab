-- Run all validation checks in sequence

.read 01_check_tables_exist.sql
.read 02_check_foreign_keys.sql
.read 03_check_timestamp_ranges.sql
.read 04_check_row_counts.sql
.read 05_check_sensor_types.sql
