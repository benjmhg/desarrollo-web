# Usa la imagen oficial de Nginx
FROM nginx

# Copia la configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia todos los archivos de la página
COPY . /usr/share/nginx/html/

# Expone el puerto 80
EXPOSE 80

# Mantiene Nginx ejecutándose
CMD ["nginx", "-g", "daemon off;"]