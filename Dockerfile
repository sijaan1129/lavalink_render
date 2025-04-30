# Use Java 17 base image
FROM eclipse-temurin:17

# Set working directory
WORKDIR /opt/Lavalink

# Download Lavalink.jar dynamically from GitHub
RUN curl -L -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar

# Copy application.yml (your config file)
COPY application.yml .

# Expose Lavalink default port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
