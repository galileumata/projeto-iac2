!#/bin/bash

echo "Realizando UPDATE no servidor..."

apt-get update

echo "UPDATE realizado!! :D"
echo "Realizando UPGRADE no servidor..."

apt-get upgrade -y

echo "UPDATE realizado!! :D"
echo "Baixando Servidor Web APACHE2..."

apt-get install apache2 -y

echo "Instalado!! :D"
echo "Instalando aplicativo unzip..."

apt-get install unzip -y

echo "Instalado!! :D"
echo "Realizando a instalação e configuração do aplicação web..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Pronto!! :D"
