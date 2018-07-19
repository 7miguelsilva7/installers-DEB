#!/bin/bash
# by SEVERINOOOOOO - eoiljr@yahoo.com.br
# Arquivo que recarrega as configuracoes do desktop original no LE 3 com Multiterminais
echo '#########################################################################'
echo '-<(     Restaurando as configuracoes do Desktop...     )>-'
echo '#########################################################################'

cp -r /home/.desktop-professor/config/* /home/professor/.kde/share/config/
chown -R professor:professor /home/professor/.kde/
cp -r /home/.desktop-professor/.config/* /home/professor/.config/
chown -R professor:professor /home/professor/.config/
cp -r /home/.desktop-professor/.local/* /home/professor/.local/ 
chown -R professor:professor /home/professor/.local/

cp -r /home/.desktop-aluno/.desktop-aluno1/config/* /home/aluno1/.kde/share/config/
chown -R aluno1:aluno /home/aluno1/.kde/
cp -r /home/.desktop-aluno/.desktop-aluno1/.config/* /home/aluno1/.config/
chown -R aluno1:aluno /home/aluno1/.config/
cp -r /home/.desktop-aluno/.desktop-aluno1/.local/* /home/aluno1/.local/ 
chown -R aluno1:aluno /home/aluno1/.local/

cp -r /home/.desktop-aluno/.desktop-aluno2/config/* /home/aluno2/.kde/share/config/
chown -R aluno2:aluno /home/aluno2/.kde/
cp -r /home/.desktop-aluno/.desktop-aluno2/.config/* /home/aluno2/.config/
chown -R aluno2:aluno /home/aluno2/.config/
cp -r /home/.desktop-aluno/.desktop-aluno2/.local/* /home/aluno2/.local/ 
chown -R aluno2:aluno /home/aluno2/.local/

cp -r /home/.desktop-aluno/.desktop-aluno3/config/* /home/aluno3/.kde/share/config/
chown -R aluno3:aluno /home/aluno3/.kde/
cp -r /home/.desktop-aluno/.desktop-aluno3/.config/* /home/aluno3/.config/
chown -R aluno3:aluno /home/aluno3/.config/
cp -r /home/.desktop-aluno/.desktop-aluno3/.local/* /home/aluno3/.local/ 
chown -R aluno3:aluno /home/aluno3/.local/

cp -r /home/.desktop-aluno/.desktop-aluno4/config/* /home/aluno4/.kde/share/config/
chown -R aluno4:aluno /home/aluno4/.kde/
cp -r /home/.desktop-aluno/.desktop-aluno4/.config/* /home/aluno4/.config/
chown -R aluno4:aluno /home/aluno4/.config/
cp -r /home/.desktop-aluno/.desktop-aluno4/.local/* /home/aluno4/.local/ 
chown -R aluno4:aluno /home/aluno4/.local/

cp -r /home/.desktop-aluno/.desktop-aluno5/config/* /home/aluno5/.kde/share/config/
chown -R aluno5:aluno /home/aluno5/.kde/
cp -r /home/.desktop-aluno/.desktop-aluno5/.config/* /home/aluno5/.config/
chown -R aluno5:aluno /home/aluno5/.config/
cp -r /home/.desktop-aluno/.desktop-aluno5/.local/* /home/aluno5/.local/ 
chown -R aluno5:aluno /home/aluno5/.local/

chmod 666 /home/aluno1/.ICEauthority 
chmod 666 /home/aluno2/.ICEauthority 
chmod 666 /home/aluno3/.ICEauthority 
chmod 666 /home/aluno4/.ICEauthority 
chmod 666 /home/aluno5/.ICEauthority 
chmod 666 /home/professor/.ICEauthority

echo '#########################################################################'
echo '-<(     Configuracoes Restauradas.     )>-'
echo '#########################################################################'

/etc/init.d/networking restart
qdbus org.kde.ksmserver /KSMServer logout 0 0 0
