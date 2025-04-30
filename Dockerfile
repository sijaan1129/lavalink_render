FROM eclipse-temurin:17-jdk

WORKDIR /app

# Lavalink config
COPY application.yml ./

# Lavalink.jar will be added as a secret, not uploaded directly
COPY /etc/secrets/Lavalink.jar ./Lavalink.jar

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
