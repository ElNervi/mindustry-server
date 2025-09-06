FROM openjdk:17-jdk-slim

WORKDIR /app

COPY server.jar .
COPY config/maps ./config/maps
COPY Omega.msav ./config/maps/

EXPOSE 6567

CMD ["java", "-jar", "server.jar", "-m", "Omega_Sector"]
