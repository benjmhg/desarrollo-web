# Proyecto Los Computines - Laboratorio 01

Este repositorio contiene el código fuente y la documentación del sitio web estático desarrollado por el equipo de desarrollo web "Los Computines".

## Requisitos Previos
- Tener instalado **Docker Desktop** (con WSL 2 habilitado en caso de usar Windows) y ejecutándose en el sistema.

## Instrucciones de Despliegue

Para desplegar este sitio web en un entorno local mediante Nginx y Docker, sigue estos pasos en tu terminal (CMD o PowerShell), asegurándote de estar ubicado en la raíz de la carpeta del proyecto:

### 1. Construir la imagen Docker
Este comando lee el archivo `Dockerfile` del proyecto, descarga la imagen base y empaqueta nuestros archivos HTML y CSS.
```bash
docker build -t mi-web-html .
```

### 2. Ejecutar el contenedor
Una vez construida la imagen, ejecuta el siguiente comando para levantar el servidor en segundo plano (-d) y mapear el puerto 8080 de la máquina local al puerto 80 del contenedor (-p 8080:80).
```bash
docker run -d -p 8080:80 --name mi-web-container mi-web-html
```

### 3. Visualizar el sitio web
Abre tu navegador web de preferencia e ingresa a la siguiente dirección para ver el sitio funcionando:
[http://localhost:8080](http://localhost:8080)