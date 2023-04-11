#!/bin/zsh
BACKUP_DIR=~/backups
DATE=`date +%Y-%m-%d`
FILENAME=backup-$DATE.tar.gz
tar -czvf $BACKUP_DIR/$FILENAME --exclude=$BACKUP_DIR --exclude=/proc --exclude=/lost+found --exclude=/sys --exclude=/mnt --exclude=/media --exclude=/run --exclude=/tmp /
