#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /Adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos" -m -s /bin/bash -g GRP_ADM
useradd maria  -c "Maria" -m -s /bin/bash -g GRP_ADM
useradd joao -c "João" -m -s /bin/bash -g GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -g GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -g GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash  -g GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -g GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -g GRP_SEC
useradd rogerio -c "Rogério" -m -s /bin/bash -g GRP_SEC

echo "Espeficicando permissões aos diretórios..."

chown root:GRP_ADM /Adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /Adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
