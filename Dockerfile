# Use a imagem oficial do OpenJDK como a base
FROM openjdk:11

# Copie o arquivo Java para dentro da imagem
COPY MeuPrograma.java /usr/src/

# Defina o diretório de trabalho dentro da imagem
WORKDIR /usr/src/

# Compile o programa
RUN javac MeuPrograma.java

# Execute o programa quando o contêiner for iniciado
CMD ["java", "MeuPrograma"]
