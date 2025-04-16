import os
import shutil
from datetime import datetime

# Specify the path to the folder with important files
source_dir = '/path/to/important/files'

# Specify the path to the folder for backup copies
backup_dir = '/path/to/backup/folder'

# Get the current date for the name of the subfolder
current_date = datetime.now().strftime("%Y-%m-%d")

# Create the full path to the new subfolder with the current date
new_backup_dir = os.path.join(backup_dir, current_date)

# Create a new subfolder if it doesn't exist
if not os.path.exists(new_backup_dir):
    os.makedirs(new_backup_dir)

# Copy all files from the source directory to the new backup directory
for filename in os.listdir(source_dir):
    file_path = os.path.join(source_dir, filename)
    if os.path.isfile(file_path):
        shutil.copy(file_path, new_backup_dir)