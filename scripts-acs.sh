#!/bin/bash

echo "Atualizando o servidor"
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget
uzip main.zip
cd Projeto-back-end-CRUD-main
cp -R * /var/www/html/


