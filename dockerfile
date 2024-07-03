# Use uma imagem base do OpenJDK
FROM openjdk:17-jdk-alpine

# Adicione um argumento para especificar o jar da aplicação
ARG JAR_FILE=target/*.jar

# Copie o jar da aplicação para o container
COPY ${JAR_FILE} app.jar

# Exponha a porta que a aplicação Spring Boot usará
EXPOSE 8080

# Execute o jar da aplicação
ENTRYPOINT ["java", "-jar", "/app.jar"]
