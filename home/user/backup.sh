#!/bin/bash

# Specify the source database parameters
SOURCE_HOST="source_host"
SOURCE_DB="source_db"
SOURCE_USER="source_user"
SOURCE_PASSWORD="source_password"

# Specify the backup file path
BACKUP_PATH="/path/to/your/backup/file.sql"

# Export the PGPASSWORD environment variable
export PGPASSWORD=$SOURCE_PASSWORD

# Use pg_dump to create a backup
pg_dump -h $SOURCE_HOST -U $SOURCE_USER -F p -b -v -f $BACKUP_PATH $SOURCE_DB

# Unset the PGPASSWORD environment variable
unset PGPASSWORD