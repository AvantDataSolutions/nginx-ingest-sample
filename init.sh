#!/bin/sh

mkdir -p ./data/pg_data
mkdir -p ./data/pg_admin
mkdir -p ./data/nginx/logs

chown 1000.1000 -R ./data/pg_data
chown 5050.5050 -R ./data/pg_admin
