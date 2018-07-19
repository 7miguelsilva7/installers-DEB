#!/bin/bash

if [ -e /opt/alternatePanel/dock-off.sh ]; then

mv /opt/alternatePanel/dock-off.sh /opt/alternatePanel/dock-on.sh;
#remover painel
gconftool-2 --set "/desktop/gnome/session/required_components/panel" --type string "removePanelGnome";

else

mv /opt/alternatePanel/dock-on.sh /opt/alternatePanel/dock-off.sh;
#Adicionar Painel
gconftool-2 --set "/desktop/gnome/session/required_components/panel" --type string "gnome-panel";

fi
xterm -e sudo /etc/init.d/gdm restart
#xterm -e sudo reboot

