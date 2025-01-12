#!/bin/bash
# Resets Proxmox services to get rid of the question marks and loss of sync in a cluster.
echo "Stopping:"
echo "     pve-cluster"
service pve-cluster stop
echo "     corosync"
service corosync stop
echo "     pvestatd"
service pvestatd stop
echo "     pveproxy"
service pveproxy stop
echo "     pvedaemon"
service pvedaemon stop
echo "Starting:"
echo "     pve-cluster"
service pve-cluster start
echo "     corosync"
service corosync start
echo "     pvestatd"
service pvestatd start
echo "     pveproxy"
service pveproxy start
echo "     pvedaemon"
service pvedaemon start
echo "Now you pray it worked."
