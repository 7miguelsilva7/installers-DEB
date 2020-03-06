ans=$(zenity  --list  --text "Escolha o formato?" --radiolist  --column "Pick" --column "Opinion" TRUE Video FALSE Audio); 

if [ "$ans" = "Audio e Video" ] ; then
               bash /opt/downmpx/downAV.sh
fi

if [ "$ans" = Audio ] ; then
               bash /opt/downmpx/downAudio.sh
fi

if [ "$ans" = Video ] ; then
               bash /opt/downmpx/downVideo.sh
fi
