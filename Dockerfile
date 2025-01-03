# Usar a imagem oficial do Minecraft (a mais recente)
FROM itzg/minecraft-server:latest

# Definir variáveis de ambiente para configuração do servidor
ENV MINECRAFT_EULA=true
ENV MINECRAFT_SERVER_PORT=25565
ENV MINECRAFT_VERSION=1.16.5
ENV MINECRAFT_FORGE=true
ENV MINECRAFT_MAX_PLAYERS=20
ENV MINECRAFT_MOTD="A Minecraft Server com Forge"
ENV MINECRAFT_WHITELIST=false
ENV MINECRAFT_SPAWN_PROTECTION=16
ENV MINECRAFT_DIFFICULTY=2

# Copiar os mods para o diretório de mods do servidor
COPY ./mods /data/mods

# Expor a porta do servidor
EXPOSE 25565

# Criar o script de início
COPY start.sh /data/start.sh
RUN chmod +x /data/start.sh

# Definir o comando de execução
CMD ["/data/start.sh"]
