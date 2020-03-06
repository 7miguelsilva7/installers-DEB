#!/bin/sh

#verifica se youtube-dl está instalado e sugere atualização
myarq="youtube-dl"

if which -a "$myarq"
then
	var='1' #instalado
	if zenity --question --text="Gostaria de Atualizar o youtube-dl"

	then 
	    xterm -e sudo youtube-dl -U
	fi
	    	    
else
	var='0' #Não instalado
	if zenity --question --text="Gostaria de instalar o youtube-dl "

	then 
	    xterm -e sudo .install-yt-dl.sh
	fi
fi
#verifica se youtube-dl está instalado e sugere atualização


FILEdir=`zenity --file-selection --directory --title="Onde deseja salvar?"`

        case $? in
                 0)
                        echo '#cole os links abaixo desta linha' > /$FILEdir/tmp.txt;;
                 1)
                        echo "No file selected.";;
                -1)
                        echo "No file selected.";;
        esac

case $? in
                 0)
                        zenity --text-info \
                          --title='Copie/cole links' \
                          --filename=/$FILEdir/tmp.txt \
                          --editable > /$FILEdir/listDownload.sh;;
                 1)
                        echo "No file selected.";;
                -1)
                        echo "No file selected.";;
        esac


sed -i 's/.*http/http/' /$FILEdir/listDownload.sh
sed -i 's/^/youtube-dl -k -f mp4 /' /$FILEdir/listDownload.sh
sed -i '1d' /$FILEdir/listDownload.sh
        
	(
	cd $FILEdir
        bash listDownload.sh
        ) |
        zenity --progress \
          --title="Baixando Vídeos/Músicas" \
          --text="Download em processamento.." \
	  --pulsate


        if [ "$?" = -1 ] ; then
                zenity --error \
                  --text="Downloads cancelados."
        fi
