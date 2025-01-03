#!/bin/bash

# Aceitar o EULA automaticamente
if [ "$MINECRAFT_EULA" = "true" ]; then
  echo "eula=true" > /data/eula.txt
else
  echo "Você precisa aceitar o EULA para iniciar o servidor."
  exit 1
fi

# Iniciar o servidor Minecraft com Forge 1.16.5
exec java -Xmx1024M -Xms1024M -jar forge-${MC_VERSION}-${FORGE_VERSION}.jar nogui
