#!/bin/bash

echo "criando usuarios do sistema..."
useradd guest10 -c "Usuario convidado" -s /bin/bash -m
passwd guest10 -e Senha123

useradd guest9 -c "Usuario convidado" -s /bin/bash -m
passwd guest9 -e Senha123 

useradd guest8 -c "Usuario convidado" -s /bin/bash -m 
passwd guest8 -e Senha123

useradd guest7 -c "Usuario convidado" -s /bin/bash -m 
passwd guest7 -e Senha123
echo "finalizado"

