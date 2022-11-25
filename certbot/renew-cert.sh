#!/bin/bash

certbot renew 

cp /etc/letsencrypt/archive/"$CN"/cert"$CV".pem /var/certs/"$CN"-cert1.pem
cp /etc/letsencrypt/archive/"$CN"/chain"$CV".pem /var/certs/chain1.pem
cp /etc/letsencrypt/archive/"$CN"/fullchain"$CV".pem /var/certs/fullchain1.pem
cp /etc/letsencrypt/archive/"$CN"/privkey"$CV".pem /var/certs/"$CN"-privkey1.pem


# how to use:
# check "echo $CN" exists
# set "export CV=3" . to next version
# run "./root/certbot/renew-cert.sh"
# reload nginx "nginx -s reload"
