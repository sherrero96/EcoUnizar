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
printf "\n\nActualizando paquetes\n\n"
sudo apt-get update -y
sudo apt-get upgrade -y

printf "\n\nINSTALACIÓN DE JAVA, SQL y GIT\n\n"
sudo apt-get install default-jdk -y

sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://ftp.utexas.edu/mariadb/repo/10.3/ubuntu bionic main'

sudo apt update

sudo apt install mariadb-server 
sudo apt-get install git

printf '\n\nINSTALACIÓN DE ECOUNIZAR\n\n'
mkdir ecoUnizar
cd ecoUnizar

git clone 'https://github.com/sherrero96/EcoUnizar.git'
cd EcoUnizar


printf "\n\n--------OPERACIONES DE ROOT--------\n\n"
sudo mysql -u root -p -e "CREATE DATABASE sistemasinformacion"
sudo mysql -u root -p -e "CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'password'"
sudo mysql -u root -p -e "Grant ALL ON sistemasinformacion.* TO usuario@localhost"


printf "\n\n--------OPERACIONES DE usuario--------\n\n"
printf "\n\n--------clave: password--------\n\n"
mysql -u usuario -p sistemasinformacion < Database/creacionTablas.sql
mysql -u usuario -p sistemasinformacion < Database/crearUsuariosIniciales.sql
mysql -u usuario -p sistemasinformacion < Database/datosIniciales.sql

mysql -u usuario -p -e 'USE sistemasinformacion'

# Instalacion de TOMCAT
wget http://apache.rediris.es/tomcat/tomcat-8/v8.5.35/bin/apache-tomcat-8.5.35.tar.gz
sudo tar -zxvf apache-tomcat-8.5.35.tar.gz -C /var/local/
sudo /var/local/apache-tomcat-8.5.35/bin/startup.sh
```

# Copiar la aplicacion war en la ruta webapps de tomcat
```ssh

```
