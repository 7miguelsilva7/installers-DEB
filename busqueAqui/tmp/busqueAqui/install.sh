#!/bin/bash
if [ "$(id -u)" != "0" ]; then
echo
echo "Voce deve executar este script como root!"
echo

else

cp -rv busqueAqui /opt/ && cp -rv usr /
chmod -R 777 /opt/busqueAqui 

fi
