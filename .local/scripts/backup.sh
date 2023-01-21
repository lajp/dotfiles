#!/bin/sh
#
if [ -z $1 ];
then
    restic -r sftp:mc:/mnt/Backups/inttipad --verbose backup ~ --exclude-file=/home/lajp/.resticignore --password-command="pass restic-inttipad"
else
    case "$1" in
        stats)
            restic -r sftp:mc:/mnt/Backups/inttipad stats --password-command="pass restic-inttipad"
            ;;
        *)
            echo "Invalid argument: '$1'"
            exit 1
            ;;
    esac
fi


