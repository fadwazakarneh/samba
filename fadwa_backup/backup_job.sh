!/bin/bash

# Configuration
source_dir=/srv/samba/fadwa_backup/   # Source directory to be backed up
backup_dir=/srv/samba/fadwa_logs/backupp   # Destination directory for the backup
backup_file="backup_$(date +%Y%m%d_%H%M%S).tar.gz"   # Name of the backup file

# Log file
log_file=/srv/samba/fadwa_logs/backup.log

# Exclude files and directories (if any)
exclude_list=(
    "/srv/samba/fadwa_backup/excluded_dir1"
    "/srv/samba/fadwa_backup/excluded_file1.txt"
)

# Function to log messages
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$log_file"
}
