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

# Adicionar um nome na whitelist automaticamente
# Comando para adicionar "bruno" na whitelist
echo "whitelist add Brxnin-FX" | nc -w 1 localhost 25565

# Você pode adicionar outros comandos aqui, como:
# echo "gamerule keepInventory true" | nc -w 1 localhost 25565
# echo "gamerule doDaylightCycle false" | nc -w 1 localhost 25565
# echo "gamerule doMobSpawning false" | nc -w 1 localhost 25565

# Manter o script em execução para não terminar
wait
