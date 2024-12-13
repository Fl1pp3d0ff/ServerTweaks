#!/bin/bash
# Resets Proxmox services to get rid of the question marks and loss of sync in a cluster.
service pve-cluster stop
service corosync stop
service pvestatd stop
service pveproxy stop
service pvedaemon stop
service pve-cluster start
service corosync start
service pvestatd start
service pveproxy start
service pvedaemon start
