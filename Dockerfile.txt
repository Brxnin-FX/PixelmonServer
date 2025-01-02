# Usando a imagem base oficial do Minecraft com suporte a mods
FROM itzg/minecraft-server:latest

# Defina a versão do Minecraft e do Forge
ENV VERSION=1.16.5
ENV FORGE=36.2.0

# Aceite o EULA (necessário para rodar o servidor)
COPY eula.txt /data/eula.txt

# Copie os mods para o diretório de mods do Minecraft no servidor
COPY ./mods /data/mods

# Exponha a porta do Minecraft para o mundo externo
EXPOSE 25565

# Defina a variável de ambiente EULA como verdadeira
ENV EULA=TRUE

# Inicie o servidor
CMD ["start.sh"]
