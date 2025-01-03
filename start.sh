#!/bin/bash

# Aceitar o EULA automaticamente se a variável de ambiente EULA for 'true'
if [ "$MINECRAFT_EULA" = "true" ]; then
  echo "eula=true" > /data/eula.txt
else
  echo "Você precisa aceitar o EULA para iniciar o servidor."
  exit 1
fi

# Substituir valores no server.properties usando variáveis de ambiente
echo "server-port=${MINECRAFT_SERVER_PORT}" > /data/server.properties
echo "level-name=${MINECRAFT_LEVEL_NAME}" >> /data/server.properties
echo "max-players=${MINECRAFT_MAX_PLAYERS}" >> /data/server.properties
echo "motd=${MINECRAFT_MOTD}" >> /data/server.properties
echo "white-list=${MINECRAFT_WHITELIST}" >> /data/server.properties
echo "spawn-protection=${MINECRAFT_SPAWN_PROTECTION}" >> /data/server.properties
echo "difficulty=${MINECRAFT_DIFFICULTY}" >> /data/server.properties

# Iniciar o servidor Minecraft com mods
exec java -Xmx1024M -Xms1024M -jar forge.jar nogui
