#!/bin/bash
# by SEVERINOOOOOO - eoiljr@yahoo.com.br, editado por Miguel Silva - miguelsilva_25_@hotmail.com - http://aetjblog.blogspot.com.br/
# Arquivo que salva as configuracoes do desktop original no LE 3 e LE 4 (versões escola emultiterminais)
(
echo 'Removendo configurações ANTERIORES de desktop'

rm -r /home/.desktop-aluno/.desktop-aluno1/config/*
rm -r /home/.desktop-aluno/.desktop-aluno1/.config/*
rm -r /home/.desktop-aluno/.desktop-aluno1/.local/*

rm -r /home/.desktop-aluno/.desktop-aluno2/config/*
rm -r /home/.desktop-aluno/.desktop-aluno2/.config/
rm -r /home/.desktop-aluno/.desktop-aluno2/.local/

rm -r /home/.desktop-aluno/.desktop-aluno3/config/*
rm -r /home/.desktop-aluno/.desktop-aluno3/.config/*
rm -r /home/.desktop-aluno/.desktop-aluno3/.local/*

rm -r /home/.desktop-aluno/.desktop-aluno4/config/*
rm -r /home/.desktop-aluno/.desktop-aluno4/.config/*
rm -r /home/.desktop-aluno/.desktop-aluno4/.local/*

rm -r /home/.desktop-aluno/.desktop-aluno5/config/*
rm -r /home/.desktop-aluno/.desktop-aluno5/.config/*
rm -r /home/.desktop-aluno/.desktop-aluno5/.local/*

rm -r /home/.desktop-professor/config/*
rm -r /home/.desktop-professor/.config/*
rm -r /home/.desktop-professor/.local/*

#############################################
echo 'Salvando NOVAS configurações de desktop '

cp -r /home/aluno1/.kde/share/config/* /home/.desktop-aluno/.desktop-aluno1/config/
cp -r /home/aluno1/.config/* /home/.desktop-aluno/.desktop-aluno1/.config/
cp -r /home/aluno1/.local/* /home/.desktop-aluno/.desktop-aluno1/.local/

cp -r /home/aluno2/.kde/share/config/* /home/.desktop-aluno/.desktop-aluno2/config/
cp -r /home/aluno2/.config/* /home/.desktop-aluno/.desktop-aluno2/.config/
cp -r /home/aluno2/.local/* /home/.desktop-aluno/.desktop-aluno2/.local/

cp -r /home/aluno3/.kde/share/config/* /home/.desktop-aluno/.desktop-aluno3/config/
cp -r /home/aluno3/.config/* /home/.desktop-aluno/.desktop-aluno3/.config/
cp -r /home/aluno3/.local/* /home/.desktop-aluno/.desktop-aluno3/.local/

cp -r /home/aluno4/.kde/share/config/* /home/.desktop-aluno/.desktop-aluno4/config/
cp -r /home/aluno4/.config/* /home/.desktop-aluno/.desktop-aluno4/.config/
cp -r /home/aluno4/.local/* /home/.desktop-aluno/.desktop-aluno4/.local/

cp -r /home/aluno5/.kde/share/config/* /home/.desktop-aluno/.desktop-aluno5/config/
cp -r /home/aluno5/.config/* /home/.desktop-aluno/.desktop-aluno5/.config/
cp -r /home/aluno5/.local/* /home/.desktop-aluno/.desktop-aluno5/.local/

cp -r /home/professor/.kde/share/config/* /home/.desktop-professor/config/
cp -r /home/professor/.config/* /home/.desktop-professor/.config/
cp -r /home/professor/.local/* /home/.desktop-professor/.local/

echo 'Configurações Salvas'
sleep 1
) | zenity --progress --width 300 --height 100 --title "Informação do Sistema" --text "Terminado!!!" --pulsate --auto-close
