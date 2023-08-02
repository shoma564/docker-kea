#!/bin/bash
sleep 10
kea-admin db-init mysql -u kea -p kea -n kea -h kea-db
/usr/sbin/kea-dhcp4 -c /etc/kea/kea-dhcp4.conf
