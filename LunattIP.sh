#!/bin/bash
trap 'echo -e "\nEscaneo detenido por el usuario"; exit' INT # Captura la señal de interrupción (Ctrl+C) para detener el script
figlet -f slant -c "LunattIP"
echo -e "\e[1;35mDesigned by Santiago Luna\e[0m"
echo -e "\e[38;5;82mAguarde hasta que lea fin del escaneo o presione CTRL C\e[0m"

for i in {1..255}; do
  if timeout 0.5 bash -c "ping -c 1 190.160.0.$i" >/dev/null 2>&1; then
    # Comprueba si se presionó una tecla
    if read -t 0.1 -N 1; then
      echo -e "\nEscaneo detenido por el usuario"
      exit
    else
      echo "El dispositivo con ip 190.160.0.$i está conectado"
    fi
  fi
done

echo -e "\e[1;92mFin del escaneo\e[0m"
