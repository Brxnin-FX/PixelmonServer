#!/bin/bash

# Caminho para o arquivo de whitelist
WHITELIST_FILE="/data/whitelist.txt"

# Verificar se o arquivo de whitelist existe
if [ ! -f "$WHITELIST_FILE" ]; then
  echo "Arquivo de whitelist não encontrado!"
  exit 1
fi

# Loop para adicionar cada nome da whitelist ao arquivo whitelist.json
while IFS= read -r player; do
  echo "Adicionando $player à whitelist..."
  # Comando para adicionar o jogador à whitelist
  /data/minecraft_server/whitelist add "$player"
done < "$WHITELIST_FILE"

# Recarregar a whitelist do Minecraft
/data/minecraft_server/whitelist reload

# Iniciar o servidor Minecraft
exec java -Xmx1024M -Xms1024M -jar /data/server.jar nogui
