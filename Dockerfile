# Usa una imagen base de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo Java en el contenedor
COPY holamundo.java  /app/holamundo.java

# Compila el archivo Java
RUN javac holamundo.java

# Define el comando para ejecutar el programa
CMD ["java", "holamundo.php"]