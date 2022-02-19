#!/bin/sh -x

for ip in `cat ips-v4`; do ufw allow from $ip to any app 'Nginx Full' comment 'Cloudslare IPs v4'; done
for ip in `cat ips-v6`; do ufw allow from $ip to any app 'Nginx Full' comment 'Cloudslare IPs v6'; done
