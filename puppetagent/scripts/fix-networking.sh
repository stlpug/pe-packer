#!/bin/bash

# Copied from https://github.com/pradels/vagrant-libvirt/blob/master/tools/prepare_redhat_for_box.sh

# Networking setup..
# Don't fix ethX names to hw address.
rm -f /etc/udev/rules.d/*persistent-net.rules
rm -f /etc/udev/rules.d/*-net.rules
rm -fr /var/lib/dhclient/*

# Interface eth0 should get IP address via dhcp.
cat > /etc/sysconfig/network-scripts/ifcfg-eth0 << EOF
DEVICE="eth0"
BOOTPROTO="dhcp"
ONBOOT="yes"
NM_CONTROLLED="no"
EOF
