#!bin/bash

echo "Script de atualização e aplicação web"
echo "Atualizando o servidor atual..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação recém instalada"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html

