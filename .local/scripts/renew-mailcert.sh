#!/bin/sh
openssl s_client -showcerts -connect mail.lajp.fi:993 </dev/null 2>/dev/null|openssl x509 -outform PEM >> /etc/ssl/certs/ca-certificates.crt
