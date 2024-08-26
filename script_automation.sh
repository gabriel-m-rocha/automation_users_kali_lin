#!/bin/bash
#############Gabriel Mendes############

echo "Criando Novos Diretorios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando Grupo para os Users"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando novos Usuarios... "

PASSWORD=$(openssl passwd -6 "senha123")

useradd -m -p "$PASSWORD" -s /bin/bash joao -G GRP_ADM
useradd -m -p "$PASSWORD" -s /bin/bash maria -G GRP_ADM
useradd -m -p "$PASSWORD" -s /bin/bash carlos -G GRP_ADM


useradd -m -p "$PASSWORD" -s /bin/bash debora -G GRP_VEN
useradd -m -p "$PASSWORD" -s /bin/bash sebastiana -G GRP_VEN
useradd -m -p "$PASSWORD" -s /bin/bash roberto -G GRP_VEN


useradd -m -p "$PASSWORD" -s /bin/bash josefina -G GRP_SEC
useradd -m -p "$PASSWORD" -s /bin/bash amanda -G GRP_SEC
useradd -m -p "$PASSWORD" -s /bin/bash rogerio -G GRP_SEC

echo "Adicionando Usuarios aos Grupos designados..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 777 /public
chmod 770 /sec

echo "Processo finalizado!"