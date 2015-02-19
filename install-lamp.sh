#!/bin/bash
clear

echo "###############################################################"
echo "###### INSTAÇÃO DO SERVIDOR APACHE + MYSQL + PHPMYADMIN #######"
echo "###############################################################"
echo ""
echo "Preste bastante atenção ao que se pede, como senhas e usuários."
echo "Bom trabalaho ;)"
echo ""
echo "################# Instalando Apache ####################"
sudo apt-get install lamp-server^ -y
clear
echo "################# Instalando MySql-Server ####################"
sudo apt-get install mysql-server -y
echo "################# Instalando MySql-client ####################"
sudo apt-get install mysql-client -y
echo "################# Instalando PhpMyAdmin ####################"
sudo apt-get install phpmyadmin -y
clear
echo "############## Instalando Lib's Imagemagick, cUrl, php5-cli ####################"
sudo apt-get install imagemagick curl libcurl3 libcurl3-dev php5-curl php5-cli mcrypt -y
clear
echo "################# Habilitando mcrypt para uso do Laravel ####################"
sudo php5enmod mcrypt
sudo a2enmod rewrite
clear
echo "################# Reiniciando o servidor Apache ####################"
sudo service apache2 reload
clear
echo "################# Instalando o composer ####################"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
clear
echo "################# Tudo terminado, agora vamos trabalhar ;) ####################"
