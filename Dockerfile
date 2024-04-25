FROM gvenzl/oracle-xe:latest

# Copy the custom init script
COPY ini_oradata.sh /usr/local/bin/init-ora.sh

# Set the custom script as the entrypoint
ENTRYPOINT ["ini_oradata.sh"]
