#!/bin/bash
systemctl stop apache2.service
/etc/init.d/apache2 stop
service apache2 stop
stop apache2
apache2ctl stop

/etc/init.d/mysql - root -p stop
service mysql stop
stop mysql
service mysqld stop

/opt/lampp/bin/mysqldump -u root moodle > ~/moodle-old.sql
/opt/lampp/bin/mysqldump -u root bitnami_moodle > ~/bitnami_moodle-old.sql

mkdir ~/.config/
mkdir ~/.config/autostart/
chmod -R 777 ~/.config/autostart/

mkdir ~/.kde/
mkdir ~/.kde/Autostart/
chmod -R 777 ~/.kde/Autostart/

cp /opt/lampp/htdocs/SimRede.desktop ~/.config/autostart/
cp /opt/lampp/htdocs/SimRede.desktop ~/.kde/Autostart/
cp /opt/lampp/htdocs/simrede/database/criarBD.sh ~/
chmod -R 777 ~/criarBD.sh

cd /tmp/xampp/
#### verifica arquitetura
HOST_ARCH=$(file /bin/bash | cut -d' ' -f3);

if [ $HOST_ARCH = "32-bit" ]; then

cd 32-bit
cat x* > xampp-linux-5.6.11-1-installer.run
chmod +x xampp-linux-5.6.11-1-installer.run
xterm -e ./xampp-linux-5.6.11-1-installer.run
cd ..

elif [ $HOST_ARCH = "64-bit" ]; then

cd 64-bit
cat x* > xampp-linux-x64-5.6.30-0-installer.run
chmod +x xampp-linux-x64-5.6.30-0-installer.run
xterm -e ./xampp-linux-x64-5.6.30-0-installer.run
cd ..

else
   zenity --info --text="Sistema Não Suportado"
fi

cp /opt/lampp/htdocs/config.php /opt/lampp/htdocs/moodle

chmod -R 777 /opt/lampp/moodledata
chmod -R 777 /opt/lampp/htdocs/

/opt/lampp/lampp start
/opt/lampp/lampp start

sed -i 's/\"exit 0\"//g' /etc/rc.local
sed -i 's/exit 0/\/opt\/lampp\/lampp start\n\/opt\/lampp\/lampp start\n\/opt\/lampp\/lampp start\n\nexit 0/g' /etc/rc.local

chmod +x /etc/rc.local

zenity --info --text="Projeto instalado! \n
Execute o seguinte comando \n bash ~/criarBD.sh \n para a criação das tabelas do banco de dados \n em caso de problemas reinicie o sistema e execute o comando acima novamente"

