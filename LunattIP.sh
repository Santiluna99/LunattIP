#!/bin/bash
figlet -f slant  -c "LunattIP";
echo -e "\e[38;5;82mDesigned by Santiago Luna\e[0m" 
echo -e "\e[1;35mAguarde hasta que lea fin del escaneo\e[0m"
for i in {1..255}; do
  timeout 0.5 bash -c "ping -c 1 190.160.0.$i" >/dev/null 2>&1 # cambiar los primeros tres numeros de la direccion IP por la del usuario
  if [ $? -eq 0 ]; then
    echo "El dispositivo con ip 190.160.0.$i está conectado" # cambiar los primeros tres numeros de la direccion IP por la del usuario
  fi
done
echo -e "\e[1;92mFin del escaneo\e[0m"
