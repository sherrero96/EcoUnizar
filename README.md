# EcoUnizar
Repositorio de la aplicación web EcoUnizar

# Auditoria
* [Sergio Herrero](https://github.com/sherrero96)
* [José Félix Longares](https://github.com/pepelongares)
* [Bolu Li Yuan](https://github.com/BoliLi)

#	INSTALACIÓN DE LA APLICACION WEB ECOUNIZAR
Explicación para el despliegue en ubuntu 18.04

```ssh
#!/bin/bash
sudo apt-get update
sudo apt-get upgrade

echo "\n\nINSTALACIÓN DE ECOUNIZAR\n\n"
mkdir ecoUnizar
cd ecoUnizar


sudo apt-get install default-jdk

sudo apt-get install mysql-server mysql-client


echo "\n\n--------OPERACIONES DE ROOT--------\n\n"
mysql -u root -p -e "CREATE DATABASE sistemasinformacion"
mysql -u root -p -e "CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'password'"
mysql -u root -p -e "Grant ALL ON sistemasinformacion.* TO usuario@localhost"

cd DB
echo "\n\n--------OPERACIONES DE usuario--------\n\n"
echo "\n\n--------clave: password--------\n\n"
mysql -u usuarioSIBD -p sistInfBD < codigo\ SQL.sql
mysql -u usuarioSIBD -p sistInfBD < juegos\ SQL.sql --force
mysql -u usuarioSIBD -p sistInfBD < logros\ SQL.sql

mysql -u usuarioSIBD -p -e "USE sistemasinformacion"

# Instalacion de TOMCAT
wget http://apache.rediris.es/tomcat/tomcat-8/v8.5.35/bin/apache-tomcat-8.5.35.tar.gz
sudo tar -zxvf apache-tomcat-8.5.35.tar.gz -C /var/local/
sudo /var/local/apache-tomcat-8.5.35/bin/startup.sh

