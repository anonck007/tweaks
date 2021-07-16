#!/bin/bash
date=$(date +%d-%m-%Y-%H-%M-%S)
mkdir -p $HOME/backup/
dest=$HOME/backup
echo Backing up files from /home/bridge/vpn to $dest
echo -e "\nFile Name: backup-"$date".tar.gz" | tee -a $dest/log.txt
tar czvf $dest/backup-$date.tar.gz /home/bridge/vpn &>> $dest/log.txt && echo "---Backing Up Completed---"
