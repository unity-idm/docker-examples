#!/usr/bin/env bash
set -euo pipefail

# Make Postgres listen on the container network interface(s)
echo "listen_addresses='*'" >> "$PGDATA/postgresql.conf"
echo "password_encryption='scram-sha-256'" >> "$PGDATA/postgresql.conf"

# Allow only the app user from the compose subnet
# Format: host <db> <user> <cidr> <auth-method>
echo "host  appdb  appuser  172.30.0.0/24  scram-sha-256" >> "$PGDATA/pg_hba.conf"

