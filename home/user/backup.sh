#!/bin/bash

# Specify the database parameters
DB_HOST="your_db_host"
DB_NAME="your_db_name"
DB_USER="your_db_user"
DB_PASSWORD="your_db_password"

# Specify the backup directory and filename
BACKUP_DIR="/path/to/your/backup/directory"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d%H%M%S).sql"

# Export the PGPASSWORD environment variable
export PGPASSWORD=$DB_PASSWORD

# Create a backup using pg_dump
pg_dump -h $DB_HOST -U $DB_USER -d $DB_NAME -Fp -f $BACKUP_FILE

# Unset the PGPASSWORD environment variable
unset PGPASSWORD

echo "Backup created successfully at $BACKUP_FILE"