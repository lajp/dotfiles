#!/bin/sh

restic -r sftp:mc:/mnt/Backups/inttipad --verbose backup ~ --exclude-file=/home/lajp/.resticignore
