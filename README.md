# **JAVA HOLA MUNDO**

Un proyecto simple que demuestra cómo crear y ejecutar un programa "Hola Mundo" en Java, incluyendo su containerización con Docker.

## Descripción
Este proyecto implementa un programa básico en Java que imprime "Hola Mundo" en la consola. Es un ejemplo perfecto para entender la estructura básica de un programa Java y su despliegue en un contenedor Docker.

## Requisitos
- **JDK**: Java Development Kit 17 o superior
- **Docker**: (opcional) para la ejecución containerizada

## Estructura del Proyecto
```
java-hola-mundo/
│
├── holamundo.java   # Archivo principal de Java
├── Dockerfile       # Configuración de Docker
└── README.md        # Este archivo
```

## Contenido de los Archivos

### holamundo.java
```java
public class holamundo {
    public static void main(String[] args) {
        System.out.println("Hola Mundo");
    }
}
```

### Dockerfile
```dockerfile
# Usa una imagen base de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo Java en el contenedor
COPY holamundo.java  /app/holamundo.java

# Compila el archivo Java
RUN javac holamundo.java

# Define el comando para ejecutar el programa
CMD ["java", "holamundo.java"]
```

## Instalación y Ejecución

### Clonar el Repositorio
```bash
git clone https://github.com/<tu-usuario>/java-hola-mundo.git
cd java-hola-mundo
```

### Ejecución Local con Java
Asegúrate de tener Java instalado en tu sistema:

1. Compilar el programa:
```bash
javac holamundo.java
```

2. Ejecutar el programa:
```bash
java holamundo
```

### Ejecución con Docker

**Paso 1: Construir la Imagen**
```bash
docker build -t java-hola-mundo .
```

**Paso 2: Ejecutar el Contenedor**
```bash
docker run java-hola-mundo
```

## Docker Hub
La imagen de este proyecto está disponible públicamente en Docker Hub:
[Java Hola Mundo en Docker Hub](https://hub.docker.com/repository/docker/john2713/hola-mundo-java/general)

Para descargar y ejecutar la imagen directamente desde Docker Hub:
```bash
docker pull john2713/hola-mundo-java:latest
docker run john2713/hola-mundo-java:latest
```

## Despliegue en Docker Hub

**Paso 1: Etiquetar la Imagen**
```bash
docker tag java-hola-mundo john2713/hola-mundo-java:latest
```

**Paso 2: Publicar en Docker Hub**
```bash
docker push john2713/hola-mundo-java:latest
```

## Guía de Desarrollo

### Prerrequisitos
1. JDK 17 o superior instalado
2. Docker (opcional)
3. Git

### Configuración del Entorno de Desarrollo
1. Instala Java en tu sistema
   - Descarga JDK desde [Oracle](https://www.oracle.com/java/technologies/downloads/) o utiliza OpenJDK
   - Sigue las instrucciones de instalación según tu sistema operativo

2. Verifica la instalación:
   ```bash
   java --version
   javac --version
   ```

3. Configura las variables de entorno JAVA_HOME (si es necesario)
   ```bash
   # En Unix/Linux/MacOS
   export JAVA_HOME=/path/to/java
   
   # En Windows (mediante PowerShell como administrador)
   setx JAVA_HOME "C:\Program Files\Java\jdk-17"
   ```

## Mejores Prácticas
- El código sigue las convenciones de estilo de Java
- Se utiliza una versión LTS de Java
- El Dockerfile está optimizado para un despliegue ligero
- Se mantiene la simplicidad del código

## Características
- Implementación minimalista de "Hola Mundo"
- Ejemplo de programa Java completamente funcional
- Configuración Docker optimizada
- Fácil de entender y modificar

## Resolución de Problemas Comunes
1. **Error: 'javac' no se reconoce como un comando interno o externo**
   - Verifica que Java está instalado correctamente
   - Comprueba las variables de entorno PATH y JAVA_HOME

2. **Error de Docker**
   - Verifica que Docker está en ejecución
   - Comprueba los permisos de Docker

## Contribuir
1. Haz fork del proyecto
2. Crea una rama para tu característica (`git checkout -b feature/nueva-caracteristica`)
3. Realiza tus cambios (`git commit -am 'Agrega nueva característica'`)
4. Sube los cambios (`git push origin feature/nueva-caracteristica`)
5. Abre un Pull Request

## Registro de Cambios
- **1.0.0** (Fecha)
  - Versión inicial del proyecto
  - Implementación básica de "Hola Mundo"
  - Configuración de Docker
  - Publicación en Docker Hub

## Enlaces Importantes
- [Imagen en Docker Hub](https://hub.docker.com/repository/docker/john2713/hola-mundo-java/general)
- [Documentación oficial de Java](https://docs.oracle.com/en/java/)
- [Guía de Docker para Java](https://docs.docker.com/language/java/)

## Licencia
Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## Autor
- JOHN2713

---
*Nota: Los comandos de Docker utilizan el usuario 'john2713'. Asegúrate de cambiar esto por tu propio usuario de Docker Hub si vas a crear tu propia versión del proyecto.*
