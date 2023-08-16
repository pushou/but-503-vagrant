#!/bin/zsh
export OPENSSL_CONF=./openssl.cnf
export VAGRANT_DEFAULT_PROVIDER=libvirt
vagrant up 
vagrant status
virsh -c  qemu:///system list --all
source ./graphic_session.sh
./tz.sh
#xfreerdp  /u:vagrant /p:vagrant /v:192.168.121.184:3389  /cert-ignore /smart-sizing:1600x1400
#xfreerdp /u:vagrant /p:vagrant /v:192.168.121.184:3389 /cert-ignore /dynamic-resolution


