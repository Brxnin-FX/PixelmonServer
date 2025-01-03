# Usando a imagem oficial do Minecraft com suporte para Forge
FROM itzg/minecraft-server:latest

# Definir variáveis de ambiente padrão para o servidor
ENV EULA=true
ENV SERVER_PORT=25565
ENV LEVEL_NAME=world
ENV MAX_PLAYERS=20
ENV MOTD="A Minecraft Server"
ENV SPAWN_PROTECTION=16
ENV DIFFICULTY=2

# Copiar os arquivos de mods para o diretório correto
COPY ./mods /data/mods

# Copiar o arquivo JAR do servidor para o contêiner
COPY ./server.jar /data/server.jar

# Copiar o script de inicialização
COPY start.sh /data/start.sh
RUN chmod +x /data/start.sh

# Expor a porta do servidor
EXPOSE 25565

# Definir o comando padrão
CMD ["/data/start.sh"]
