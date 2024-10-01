# Proyecto Java con Spring Boot

Este proyecto es una aplicación de Java con Spring Boot que se conecta a una base de datos. A continuación, se detallan los pasos para instalar y configurar el proyecto.

## Requisitos

- JDK 17 o superior
- Maven 3.6 o superior
- MySQL (o cualquier otra base de datos compatible)
- IDE (IntelliJ, Eclipse, etc.)

## Instalación

### 1. Clonar el repositorio

```bash
git clone https://github.com/usuario/proyecto-java.git
cd proyecto-java


2. Configurar la base de datos
Asegúrate de que MySQL esté instalado y ejecutándose.
Crea una base de datos en MySQL usando el siguiente script:

CREATE DATABASE mi_base_de_datos;
USE mi_base_de_datos;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT
);

3. Configurar el archivo application.properties
Dentro del directorio src/main/resources, edita el archivo application.properties para configurar la conexión con la base de datos:

spring.datasource.url=jdbc:mysql://localhost:3306/mi_base_de_datos
spring.datasource.username=tu_usuario
spring.datasource.password=tu_contraseña
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

4. Ejecutar el proyecto:

ejecutar el proyecto corriendo java desde el archivo DemoApplication.java

Uso
Una vez que la aplicación esté en funcionamiento, puedes acceder a la API en:

http://localhost:8080
