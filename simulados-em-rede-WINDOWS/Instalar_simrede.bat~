@echo on

cd\
xampp-win32-5.6.30-1-VC11-installer.exe
xcopy /E simrede c:\xampp\htdocs
xcopy /E moodle c:\xampp\htdocs
xcopy /E moodledata c:\xampp

cd\
xcopy /Y /G alunos.sql c:\xampp\mysql\bin
xcopy /Y /G cs_alunos.sql c:\xampp\mysql\bin
xcopy /Y /G perguntas.sql c:\xampp\mysql\bin
xcopy /Y /G respostas.sql c:\xampp\mysql\bin
xcopy /Y /G simRede-moodle-backup.sql c:\xampp\mysql\bin
xcopy /Y /G simRede-simrede-backup.sql c:\xampp\mysql\bin

cd\
 @echo.
 @echo       **********************************************************
 @echo       ***                                                    ***
 @echo       ***  Já está quase no fim, o computador vai reiniciar  ***
             ***  automaticamente                                   ***
 @echo       ***                                                    ***
 @echo       **********************************************************
 @echo.

cd\ 
cd c:\xampp\mysql\bin
mysql -u root -e "DROP DATABASE bitnami_moodle"
mysql -u root -e "CREATE DATABASE bitnami_moodle"
mysql -u root bitnami_moodle < simRede-moodle-backup.sql
mysql -u root bitnami_moodle < perguntas.sql
mysql -u root bitnami_moodle < respostas.sql

mysql -u root -e "DROP DATABASE simrede"
mysql -u root -e "CREATE DATABASE simrede"
mysql -u root simrede < simRede-simrede-backup.sql
mysql -u root simrede < alunos.sql
mysql -u root simrede < cs_alunos.sql

cd\
xcopy /Y /G "xampp-control.lnk" "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /Y /G "Moodle.url" "%userprofile%\desktop" 

shutdown -r -t 5

