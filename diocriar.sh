#!/bin/bash
cd /
echo "criando diretorios"
mkdir publico adm ven sec
echo "criando grupos"
groupadd GRP_ADM; groupadd GRP_VEN; groupadd GRP_SEC
echo "criando usuarios e adcionando aos grupos"

for usuario in carlos maria joao; do useradd "$usuario" -c "$usuario" -m -g GRP_ADM -s /bin/bash 
done
for usuario in  carlos maria joao; do  echo "$usuario:Senha123" | chpasswd 
done

for usuario in debora sebastiana roberto; do useradd "$usuario" -c "$usuario" -m -g GRP_VEN -s /bin/bash 
done
for usuario in  debora sebastiana roberto; do  echo "$usuario:Senha123" | chpasswd 
done

for usuario in josefina amanda rogerio; do useradd "$usuario" -c "$usuario" -m -g GRP_SEC -s /bin/bash 
done
for usuario in josefina amanda rogerio; do  echo "$usuario:Senha123" | chpasswd 
done
echo "criando permissões"
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec
for arquivos in adm ven sec; do chmod 770 "$arquivos" 
done
chmod 777 publico
echo "finalizado"
