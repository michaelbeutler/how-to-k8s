#!/bin/bash
echo "Hostname:"
read hostname

if grep "$hostname" /etc/hosts > /dev/null
then
    echo "Hostname already in /etc/hosts"
else
    echo "195.65.47.197   $hostname" >> /etc/hosts
fi

curl https://$hostname/ping