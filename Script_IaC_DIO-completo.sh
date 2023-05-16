
#!/bin/bash

echo "criando diretórios"

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários"

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
 
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)

useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)

echo "Organizando usuários"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "operação realizada"
