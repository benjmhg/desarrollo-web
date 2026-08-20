#---Usar la imagen oficial de nginx como servidor web
FROM nginx:alpine

#Copia nuestra página al directorio que nginx sirve por defecto
COPY . /usr/share/nginx/html/
