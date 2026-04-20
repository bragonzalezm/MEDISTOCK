Proyecto MEDISTOCK - API RESTful

## Descripción
El objetivo de la API es centralizar y automatizar el flujo de información entre el inventario, los proveedores y los clientes. Funciona como el motor del sistema, permitiendo que la plataforma gestione pedidos y consulte existencias en tiempo real de forma eficiente y segura.

Problemas que resuelve

* **Desfase de stock:** Elimina errores de inventario, asegurando que solo se venda lo que realmente está disponible.
* **Procesos manuales:** Automatiza la recepción y validación de órdenes, reduciendo los tiempos de espera y la carga administrativa.
* **Falta de visibilidad:** Proporciona trazabilidad completa, permitiendo conocer el estado exacto de cada pedido desde que se solicita hasta que se entrega.

## Stack Tecnológico
* **Lenguaje:** (ej. Java 21)
* **Framework:** (ej. Spring Boot 3.x)
* **Base de Datos:** (ej. MySQL / Oracle XE)
* **Herramientas de Construcción:** (ej. Maven / Gradle)

## Estructura de Carpetas
Explique brevemente la organización de su código base:
* `controller/`: Definición de endpoints REST.
* `service/`: Lógica de negocio y validaciones.
* `repository/`: Interfaces para acceso a datos.
* `model/`: Entidades JPA o POJOs de dominio.

## Configuración e Instalación
1. Clonar el repositorio.
2. Configurar el archivo de propiedades (database, puerto).
3. Ejecutar el comando de arranque del framework.

## Documentación de Arquitectura (Modelo 4+1)
Acceso a los diagramas de despliegue, comunicación y paquetes:
* [Carpeta Compartida de Diagramas](INSERTE_LINK_AQUÍ)

## Pruebas de API
* **Postman:** Indique si existe un archivo JSON con la colección o un enlace público.
