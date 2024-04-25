#!/bin/bash

# Create the recovery_area directory
mkdir -p /opt/oracle/oradata/recovery_area

# Set permissions if necessary
chown oracle:dba /opt/oracle/oradata/recovery_area

# Execute the original entrypoint script
exec /opt/oracle/container-entrypoint.sh
