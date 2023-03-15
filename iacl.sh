#!/bin/bash

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Criando grupos..."

groupadd root: GRP_ADM
groupadd root: GRP_VEN
groupadd root: GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -c "Carlos" -p $(openssh passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria" -p $(openssh passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -c "Joao" -p $(openssh passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Debora" -p $(openssh passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana" -p $(openssh passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto" -p $(openssh passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina" -p $(openssh passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda" -p $(openssh passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogerio" -p $(openssh passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Tarefa finalizada."
