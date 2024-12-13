#!/bin/bash
#This file should be owned by root and set chmod 0700
#It sets fan speeds such that putting the fans into "normal" or "optimal" mode
#   in the BMC will allow the fans to stay in that mode - preventing the BMC
#   from setting the fans back to full speed because it believes they've fallen
#   below the minimums set by SuperMicro's firmware.
ipmitool sensor thresh FAN1 lower 300 500 700
ipmitool sensor thresh FAN1 upper 13000 15000 17000
ipmitool sensor thresh FAN2 lower 300 500 700
ipmitool sensor thresh FAN2 upper 13000 15000 17000
ipmitool sensor thresh FAN3 lower 300 500 700
ipmitool sensor thresh FAN3 upper 13000 15000 17000
ipmitool sensor thresh FAN4 lower 300 500 700
ipmitool sensor thresh FAN4 upper 13000 15000 17000
ipmitool sensor thresh FAN5 lower 300 500 700
ipmitool sensor thresh FAN5 upper 13000 15000 17000
ipmitool sensor thresh FAN6 lower 300 500 700
ipmitool sensor thresh FAN6 upper 13000 15000 17000
ipmitool sensor thresh FANA lower 300 500 700
ipmitool sensor thresh FANA upper 13000 15000 17000
ipmitool sensor thresh FANB lower 300 500 700
ipmitool sensor thresh FANB upper 13000 15000 17000
