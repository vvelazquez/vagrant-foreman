#!/bin/bash

# Need to use the hammer command to enable the "puppetrun" setting. 

# Create and configure .ssh folder for the foreman-proxy user 
mkdir /usr/share/foreman-proxy/.ssh
chmod 700 /usr/share/foreman-proxy/.ssh/
chown foreman-proxy:foreman-proxy /usr/share/foreman-proxy/.ssh

# Copy in the files to the .ssh folder
# cp....
chmod 600 /usr/share/foreman-proxy/.ssh/id_rsa
chmod 644 /usr/share/foreman-proxy/.ssh/id_rsa.pub
chown foreman-proxy:foreman-proxy /usr/share/foreman-proxy/.ssh/id_rsa
chown foreman-proxy:foreman-proxy /usr/share/foreman-proxy/.ssh/id_rsa.pub

# manually perform ssh connections and connect using all agent machine aliases, i.e. hostname, ip-number, fqdn,
# this is to ensure all RSA fingerprinting is completed. or maybe this will work:

echo "
Host *
    StrictHostKeyChecking no
" > /usr/share/foreman-proxy/.ssh/config




exit 0