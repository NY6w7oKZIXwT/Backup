#!/bin/bash

# ========== ISI CONFIG.SH ==========
# Konfigurasi
BACKUP_SOURCE="/etc /var/www /home"
BACKUP_DEST="/root/backup"
DATE=$(date +%F_%T)
BACKUP_NAME="backup-$DATE.tar.gz"
LOGFILE="/root/backup/backup.log"

# ========== ISI DATA.SH ==========
# Membuat folder backup jika belum ada
mkdir -p "$BACKUP_DEST"

# Melakukan backup
tar -czf "$BACKUP_DEST/$BACKUP_NAME" $BACKUP_SOURCE

# Cek hasil backup
if [ $? -eq 0 ]; then
    echo "[$(date)] Backup sukses: $BACKUP_NAME" >> "$LOGFILE"
else
    echo "[$(date)] Backup gagal" >> "$LOGFILE"
fi
