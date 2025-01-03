# Usando a imagem oficial do Minecraft com suporte para mods (Forge)
FROM itzg/minecraft-server:latest

# Copiar o arquivo whitelist.txt para o container
COPY ./whitelist.txt /data/whitelist.txt

# Copiar o script para adicionar jogadores à whitelist
COPY ./add_to_whitelist.sh /data/add_to_whitelist.sh
RUN chmod +x /data/add_to_whitelist.sh

# Definir a variável de ambiente para aceitar o EULA
ENV MINECRAFT_EULA=true

# Expor a porta do servidor
EXPOSE 25565

# Iniciar o servidor com o script
CMD ["/data/add_to_whitelist.sh"]
