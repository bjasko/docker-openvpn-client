#!/bin/bash
CT_NAME=rg-vpn
docker rm -f  $CT_NAME
docker run --privileged  --net=host -d  -v /data/openvpn:/etc/openvpn --name $CT_NAME  openvpn-client 
