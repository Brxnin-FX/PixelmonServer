# Usando a imagem oficial do Minecraft com suporte para mods (Forge)
FROM itzg/minecraft-server:latest

# Definir variáveis de ambiente para configuração do servidor
ENV MINECRAFT_EULA=true
ENV MINECRAFT_SERVER_PORT=25565
ENV MINECRAFT_LEVEL_NAME=world
ENV MINECRAFT_MAX_PLAYERS=20
ENV MINECRAFT_MOTD="A Minecraft Server"
ENV MINECRAFT_SPAWN_PROTECTION=16
ENV MINECRAFT_DIFFICULTY=2

# Copiar os mods para o diretório de mods do servidor
COPY ./mods /data/mods

# Iniciar o servidor com o script start.sh
COPY start.sh /data/start.sh
RUN chmod +x /data/start.sh

# Expor a porta do servidor
EXPOSE 25565

# Definir o comando de execução
CMD ["/data/start.sh"]
