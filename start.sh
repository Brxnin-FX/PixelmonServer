#!/bin/bash

# Aceitar o EULA automaticamente
if [ "$MINECRAFT_EULA" = "true" ]; then
  echo "eula=true" > /data/eula.txt
else
  echo "Você precisa aceitar o EULA para iniciar o servidor."
  exit 1
fi

# Iniciar o servidor Minecraft com Forge
java -Xmx1024M -Xms1024M -jar /data/server.jar nogui &

# Esperar o servidor iniciar completamente (pode precisar de alguns segundos)
sleep 20



# Manter o script em execução para não terminar
wait
