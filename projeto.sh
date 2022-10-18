#!/bin/bash

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando usuários..."

useradd -G GRP_ADM -s /bin/bash -m -p $(openssl passwd  senha123) carlos
useradd -G GRP_ADM -s /bin/bash -m -p $(openssl passwd  senha123) maria
useradd -G GRP_ADM -s /bin/bash -m -p $(openssl passwd  senha123) joao

useradd -G GRP_VEN -s /bin/bash -m -p $(openssl passwd  senha123) debora
useradd -G GRP_VEN -s /bin/bash -m -p $(openssl passwd  senha123) sebastiana
useradd -G GRP_VEN -s /bin/bash -m -p $(openssl passwd  senha123) roberto

useradd -G GRP_SEC -s /bin/bash -m -p $(openssl passwd  senha123) josefina
useradd -G GRP_SEC -s /bin/bash -m -p $(openssl passwd  senha123) amanda
useradd -G GRP_SEC -s /bin/bash -m -p $(openssl passwd  senha123) rogerio

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "finalizado..."