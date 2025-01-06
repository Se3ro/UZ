# Použij oficiální obraz JDK
FROM openjdk:17-jdk-slim

# Nastav pracovní adresář v kontejneru
WORKDIR /app

# Zkopíruj zkompilovaný JAR soubor do kontejneru
COPY target/Novyeshop-0.0.1-SNAPSHOT.jar app.jar

# Exponuj port aplikace
EXPOSE 8080

# Spusť aplikaci
ENTRYPOINT ["java", "-jar", "app.jar"]
