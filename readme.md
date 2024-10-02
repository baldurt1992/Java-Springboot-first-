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

CREATE DATABASE  products;

USE products;

CREATE TABLE products (
    product_id BIGINT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255),
    price DOUBLE,
    quantity_in_stock INT NOT NULL,
    manufacture_date VARCHAR(255),
    is_available TINYINT(1) DEFAULT 1,
    PRIMARY KEY (product_id)
);

INSERT INTO products (product_name, price, quantity_in_stock, manufacture_date, is_available) VALUES
('Headphones', 59.99, 200, '2022-12-01', 1),
('Desk Lamp', 24.95, 150, '2023-06-25', 0),
('Coffee Machine', 129.99, 30, '2021-11-05', 1),
('New Product', 49.99, 100, '2023-09-25', 1),
('Updated Product', 59.99, 50, '2023-09-26', 0);


3. Configurar el archivo application.properties
Dentro del directorio src/main/resources, edita el archivo application.properties para configurar la conexión con la base de datos:

spring.application.name=demo
spring.datasource.url=jdbc:mysql://localhost:3306/example1
spring.datasource.username=root
spring.datasource.password=Anb133444@@@34
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

4. Ejecutar el proyecto:

ejecutar el proyecto corriendo java desde el archivo DemoApplication.java

Uso
Una vez que la aplicación esté en funcionamiento, puedes acceder a la API en:

http://localhost:8080
