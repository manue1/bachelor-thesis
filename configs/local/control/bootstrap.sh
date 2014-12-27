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

HOST_IP=192.168.120.15
MULTI_HOST=1
#FLAT_INTERFACE=eth0

# Enable Logging
LOGFILE=/opt/stack/logs/stack.sh.log
VERBOSE=True
#OFFLINE=False
#RECLONE=yes
OFFLINE=True
RECLONE=no
LOG_COLOR=True
SCREEN_LOGDIR=/opt/stack/logs

#Neutron
disable_service n-net
enable_service q-svc
enable_service q-agt
enable_service q-dhcp
enable_service q-l3
enable_service q-meta

Q_DVR_MODE=dvr_snat
OVS_PHYSICAL_BRIDGE=br-ex

MYSQL_HOST=192.168.120.15
RABBIT_HOST=192.168.120.15
GLANCE_HOSTPORT=192.168.120.15:9292
KEYSTONE_AUTH_HOST=192.168.120.15
KEYSTONE_SERVICE_HOST=192.168.120.15

IMAGE_URLS="$IMAGE_URLS,http://cloud-images.ubuntu.com/releases/trusty/release/ubuntu-14.04-server-cloudimg-amd64-disk1.img"" > /home/vagrant/devstack/local.conf

