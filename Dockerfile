FROM eclipse-temurin:17
WORKDIR /opt/Lavalink

# Install Lavalink.jar dynamically
RUN curl -L -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
