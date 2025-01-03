#!/bin/bash

# Aceitar o EULA automaticamente
echo "eula=true" > /data/eula.txt

# Iniciar o servidor com suporte a mods
exec java -Xmx4G -Xms2G -jar /data/server.jar nogui
