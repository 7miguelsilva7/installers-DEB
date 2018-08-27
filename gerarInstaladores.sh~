#!/bin/bash
date=`date +%Y-%m`
(
echo 'Executando tarefa, aguarde... '

mkdir 0-instaladores
rm 0-instaladores/*.deb

#gerar alternatePanel
dpkg-deb -b -Z gzip alternatePanel 0-instaladores/alternatePanel-$date.deb

#gerar atvJcic
dpkg-deb -b -Z gzip atvJClic 0-instaladores/atv-jclic-$date.deb


#gera AtvJclicLousaInterativa
dpkg-deb -b -Z gzip atvJclicLousaInterativa 0-instaladores/atvJclicLousaInterativa-$date.deb


#gera busqueAqui
dpkg-deb -b -Z gzip busqueAqui 0-instaladores/busqueAqui-$date.deb


#gera Conf_rede
dpkg-deb -b -Z gzip conf_rede 0-instaladores/configRede-$date.deb


#gera CustomISO
dpkg-deb -b -Z gzip customISO 0-instaladores/customISO-$date.deb


#installerEditorISO
dpkg-deb -b -Z gzip editorISO-menuImagemClonezila 0-instaladores/editorISO-menuImagemClonezila-$date.deb


#gera edujogatiFx
dpkg-deb -b -Z gzip edujogatiFX 0-instaladores/edujogatiFX-$date.deb

#gera edujogatiFXDiebold
dpkg-deb -b -Z gzip edujogatiFXDiebold 0-instaladores/edujogatiFXDiebold-$date.deb


#gera EdujogatiFXLousaInterativa
dpkg-deb -b -Z gzip epoptesReconect 0-instaladores/epoptesReconect-$date.deb


#epoptes-Reconect
dpkg-deb -b -Z gzip edujogatiFXLousaInterativa 0-instaladores/edujogatiFXLousaInterativa-$date.deb


#gera geloDesktop
dpkg-deb -b -Z gzip geloDesktop 0-instaladores/geloDesktop-$date.deb


#gera LigaLampProjDiebold
dpkg-deb -b -Z gzip ligaLampProjDiebold 0-instaladores/ligaLampProjDiebold-$date.deb


#gera simRede
dpkg-deb -b -Z gzip simRede 0-instaladores/simRede-$date.deb

#gera firefox 45.0.2
dpkg-deb -b -Z gzip firefox-45.0.2 0-instaladores/firefox-45.0.2-$date.deb

#cd ..
#xterm -e bash ssh-installers.sh

sleep 1
) | zenity --progress --width 300 --height 100 --title "Informação do Sistema" --text "Executando tarefa, aguarde... !!!" --pulsate --auto-close

zenity --info --width 300 --height 100 --title "Informação do Sistema" --text "Tarefas Finalizadas"
