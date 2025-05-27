#!/bin/bash

# Lokasi folder yang ingin dibackup
BACKUP_SOURCE="/home/mcserver"

# Lokasi folder penyimpanan backup
BACKUP_DEST="/home/backups"

# Nama file backup
BACKUP_NAME="backup-$(date +%Y%m%d-%H%M%S).tar.gz"
