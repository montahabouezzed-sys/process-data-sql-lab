# Entity–Relationship Diagram (Text-Based)

                 ┌──────────────────────┐
                 │      vehicles        │
                 ├──────────────────────┤
                 │ vehicle_id (PK)      │
                 │ vehicle_name         │
                 │ vehicle_type         │
                 │ model_year           │
                 └───────────┬──────────┘
                             │ 1:N
                             │
                 ┌───────────▼──────────┐
                 │      test_runs        │
                 ├───────────────────────┤
                 │ test_run_id (PK)      │
                 │ vehicle_id (FK)       │───┐
                 │ component_id (FK)     │   │
                 │ start_time            │   │
                 │ end_time              │   │
                 └───────────┬───────────┘   │
                             │ 1:N            │
                             │                │
                 ┌───────────▼──────────┐    │
                 │     sensor_readings   │    │
                 ├────────────────────────┤    │
                 │ reading_id (PK)        │    │
                 │ test_run_id (FK)       │◄───┘
                 │ timestamp              │
                 │ sensor_type            │
                 │ value                  │
                 └────────────────────────┘

                 ┌──────────────────────┐
                 │     components       │
                 ├──────────────────────┤
                 │ component_id (PK)    │
                 │ component_name       │
                 │ component_type       │
                 └───────────┬──────────┘
                             │ 1:N
                             │
                 ┌───────────▼──────────┐
                 │       anomalies       │
                 ├───────────────────────┤
                 │ anomaly_id (PK)       │
                 │ test_run_id (FK)      │
                 │ timestamp             │
                 │ severity              │
                 │ description           │
                 └───────────────────────┘
