FROM openjdk:17-jdk-slim

WORKDIR /app

# Copiar server.jar
COPY server.jar .

# Crear carpeta de mapas y copiar Omega.msav
RUN mkdir -p config/maps
COPY Omega.msav config/maps/

EXPOSE 6567


# Iniciar el servidor sin argumentos inválidos
CMD ["java", "-jar", "server.jar"]
