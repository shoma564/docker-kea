FROM almalinux:latest
RUN dnf -y update && dnf -y install epel-release && dnf -y install kea
RUN dnf -y localinstall  https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm
RUN dnf -y install mysql mysql-community-client

ADD kea-dhcp4.conf /etc/kea/kea-dhcp4.conf
ADD start.sh /etc/kea/start.sh
RUN mkdir -p /var/run/kea/ && touch /var/run/kea/logger_lockfile

ENTRYPOINT ["/etc/kea/start.sh"]
