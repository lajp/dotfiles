#!/bin/sh

mbsync -a && exit
mbsync-get-cert mail.lajp.fi > /home/lajp/.local/share/mailcert/lajp.fi.crt
mbsync -a
