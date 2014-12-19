#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install git
git clone https://github.com/openstack-dev/devstack.git /home/vagrant/devstack
sudo chown -R vagrant:vagrant /home/vagrant/devstack
cd /home/vagrant/devstack
echo "[[local|localrc]]
ADMIN_PASSWORD=pass
DATABASE_PASSWORD=pass
RABBIT_PASSWORD=pass
SERVICE_PASSWORD=pass
SERVICE_TOKEN=a682f596-76f3-11e3-b3b2-e716f9080d50

HOST_IP=192.168.120.16
MULTI_HOST=1

ENABLED_SERVICES=n-cpu,rabbit,neutron,q-agt,q-l3

Q_DVR_MODE=dvr
OVS_PHYSICAL_BRIDGE=br-ex

# Enable Logging
LOGFILE=/opt/stack/logs/stack.sh.log
VERBOSE=True
OFFLINE=False
RECLONE=yes
LOG_COLOR=True
SCREEN_LOGDIR=/opt/stack/logs

SERVICE_HOST=192.168.120.15
MYSQL_HOST=192.168.120.15
Q_HOST=192.168.120.15
RABBIT_HOST=192.168.120.15
GLANCE_HOSTPORT=192.168.120.15:9292
KEYSTONE_AUTH_HOST=192.168.120.15
KEYSTONE_SERVICE_HOST=192.168.120.15" > /home/vagrant/devstack/local.conf

