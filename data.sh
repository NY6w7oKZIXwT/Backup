#!/bin/bash

# Muat konfigurasi
source ./config.sh

# Cek apakah folder sumber ada
if [ ! -d "$BACKUP_SOURCE" ]; then
    echo "Folder sumber tidak ditemukan: $BACKUP_SOURCE"
    exit 1
fi

# Buat folder tujuan jika belum ada
mkdir -p "$BACKUP_DEST"

# Jalankan proses backup
tar -czf "$BACKUP_DEST/$BACKUP_NAME" "$BACKUP_SOURCE"

# Berhasil
echo "Backup selesai: $BACKUP_DEST/$BACKUP_NAME"
