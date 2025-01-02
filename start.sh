#!/bin/bash

# Aceitar o EULA automaticamente se a variável de ambiente EULA for 'true'
if [ "$MINECRAFT_EULA" = "true" ]; then
  echo "eula=true" > /data/eula.txt
else
  echo "Você precisa aceitar o EULA para iniciar o servidor."
  exit 1
fi

# Iniciar o servidor Minecraft
exec java -Xmx1024M -Xms1024M -jar server.jar nogui
