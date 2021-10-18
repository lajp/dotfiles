#!/bin/sh
# A script to display/print the amount of unread mail in ~/.local/share/mail

#ls -l ~/.local/share/mail/*/INBOX/new/ | sed "s/total\ //g"
ls ~/.local/share/mail/*/INBOX/new/ | wc -l
