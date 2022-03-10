CREATE EXTENSION IF NOT EXISTS timescaledb;

CREATE TABLE IF NOT EXISTS access_log (time TIMESTAMPTZ NOT NULL, log_line JSONB NOT NULL);
ALTER DATABASE nginx_logs SET timescaledb.telemetry_level=off;
SELECT create_hypertable('access_log', 'time', if_not_exists => TRUE);
