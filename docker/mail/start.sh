#!/bin/sh

/usr/sbin/postfix start
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf -F
