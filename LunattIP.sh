#!/bin/bash
figlet -f slant  -c "LunattIP";
echo "Designed by Santiago Luna" 
for i in {1..255}; do
  timeout 0.3 bash -c "ping -c 1 190.160.0.$i" >/dev/null 2>&1 // cambiar los primeros tres numeros de la direccion IP por la del usuario
  if [ $? -eq 0 ]; then
    echo "El dispositivo con ip 190.160.0.$i está conectado"// cambiar los primeros tres numeros de la direccion IP por la del usuario
  fi
done
echo "Fin del escaneo"
