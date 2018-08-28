@echo on

cd\
xcopy /E c:\simulados\moodle c:\xampp\htdocs
xcopy /E c:\simulados\moodledata c:\xampp

cd\
xcopy /Y /G c:\simulados\moodle.sql c:\xampp\mysql\bin

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
mysql -u root -e "DROP DATABASE moodle"
mysql -u root -e "CREATE DATABASE moodle"
mysql -u root moodle < moodle.sql

cd\
xcopy /Y /G "c:\simulados\xampp-control.lnk" "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /Y /G "c:\simulados\Moodle.url" "%userprofile%\desktop" 

shutdown -r -t 5

