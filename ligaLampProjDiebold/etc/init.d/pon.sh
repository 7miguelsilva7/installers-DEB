#!/bin/bash
cat /usr/lib/.pon.txt > /dev/ttyS1
cp /etc/poff.sh /etc/init.d/
update-rc.d poff.sh defaults
rm /etc/init.d/pon.sh
