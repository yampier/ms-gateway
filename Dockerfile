# 1. Imagen base.
FROM openjdk:21-jdk-slim

# 2. Establecer el directorio de trabajo.
WORKDIR /app

# 3. Copiar el archivo JAR generado.
COPY target/ms-gateway-0.0.1-SNAPSHOT.jar app.jar

# 4. Exponer el puerto utilizado por el microservicio.
EXPOSE 9099

# 5. Comando de inicio.
ENTRYPOINT ["java", "-jar", "app.jar"]