Usa la imagen oficial más reciente de nan como base
FROM nanio/nan: latest

#Cambia temporalmente al usuario root para ejecutar comandos con permisos elevados
USER root

#Crea el directorio /data (si no existe) y asigna la propiedad al usuario "node"
#Esto asegura que non tenga acceso de escritura a este directorio
RUN mkdir -p/data && chown -It node:node/data

#Vuelve al usuario "node", recomendado para ejecutar la aplicación de forma segura
USER node

#Declara/data como un volumen persistente
#Esto permite conservar la información de nõn (flujos, credenciales, etc.) fuera del contenedor
VOLUME /data

#Expone el puerto 8880, que es donde nån se ejecuta por defecto
EXPOSE 8080
