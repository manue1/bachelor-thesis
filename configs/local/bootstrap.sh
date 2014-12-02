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

# Enable Logging
LOGFILE=/opt/stack/logs/stack.sh.log
VERBOSE=True
OFFLINE=False
RECLONE=yes
LOG_COLOR=True
SCREEN_LOGDIR=/opt/stack/logs

#Neutron
disable_service n-net
enable_service q-svc
enable_service q-agt
enable_service q-dhcp
enable_service q-l3
enable_service q-meta

#Q_PLUGIN=ml2
#Q_ML2_PLUGIN_MECHANISM_DRIVERS=openvswitch,linuxbridge,l2population
#Q_ML2_TENANT_NETWORK_TYPE=vxlan
#Q_DVR_MODE=dvr_snat # for single-node setup, otherwise set to 'dvr'

MYSQL_HOST=10.0.2.15
RABBIT_HOST=10.0.2.15
GLANCE_HOSTPORT=10.0.2.15:9292
KEYSTONE_AUTH_HOST=10.0.2.15
KEYSTONE_SERVICE_HOST=10.0.2.15" > /home/vagrant/devstack/local.conf

