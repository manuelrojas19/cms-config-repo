#!/bin/bash
set -e
psql -v ON_ERROR_STOP=1 --username postgres --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE DATABASE employees_service_db;
  CREATE DATABASE cms_auth_db;
EOSQL