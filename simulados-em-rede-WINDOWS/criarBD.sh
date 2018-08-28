#!/bin/bash
bash ../resetGit

#Excui os bancos bitnamu_moodle e simrede 
/opt/lampp/bin/mysql -u root -e "DROP DATABASE bitnami_moodle" | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Excluindo banco moodle" --progress --auto-close --auto-kill

/opt/lampp/bin/mysql -u root -e "DROP DATABASE simrede" | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Excluindo banco de dados alunos" --progress --auto-close --auto-kill

# Cria e Restaura o banco simrede
/opt/lampp/bin/mysql -u root -e "CREATE DATABASE simrede" | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Criando banco simrede" --progress --auto-close --auto-kill
/opt/lampp/bin/mysql -u root simrede < simRede-simrede-backup.sql | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Restaurando banco simrede" --progress --auto-close --auto-kill

/opt/lampp/bin/mysql -u root -e "CREATE DATABASE bitnami_moodle" | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Criando banco moodle" --progress --auto-close --auto-kill
/opt/lampp/bin/mysql -u root bitnami_moodle < simRede-moodle-backup.sql | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Restaurando banco moodle" --progress --auto-close --auto-kill

# Restaura a tabela alunos
/opt/lampp/bin/mysql -u root simrede < alunos.sql | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Restaurando tabela de dados alunos" --progress --auto-close --auto-kill

# Restaura view cs_alunos
/opt/lampp/bin/mysql -u root simrede < cs_alunos.sql | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Restaurando view cs_alunos" --progress --auto-close --auto-kill

# Restaura view perguntas
/opt/lampp/bin/mysql -u root bitnami_moodle < perguntas.sql | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Restaurando view perguntas" --progress --auto-close --auto-kill

# Restaura view respostas
/opt/lampp/bin/mysql -u root bitnami_moodle < respostas.sql | zenity --width 350 --pulsate --title "Informações do Sistema" --text "Restaurando view respostas" --progress --auto-close --auto-kill
