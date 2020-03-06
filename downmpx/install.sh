#!/bin/sh

#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "Precisa ser root" 2>&1
  exit 1
else

(	
	echo "[Desktop Entry]
	Version=1.0
	Type=Application
	Name=Down mpX
	Exec=bash /opt/downmpx/downmpx.sh
	Icon=/usr/share/pixmaps/youtube-dlg.png
	Categories=Network;
	Comment=Download mp3 e mp4 do youtube
	Name[pt_BR]=Down mpX" > /usr/share/applications/downmpx.desktop

	mkdir /opt/downmpx/
	cp downmpx.sh /opt/downmpx/
	cp youtube-dlg.png /usr/share/pixmaps/
	cp youtube-dl-gui_48x48.png /usr/share/pixmaps/
	cp .install-yt-dl.sh /opt/downmpx/
	chmod -R 777 /opt/downmpx/
        ) | 
	  zenity --progress \ 
          --title="Instalando" \
          --text="Instalando" \
	  --pulsate
fi
