# docker build -t travelmaster .
# docker run -p 3000:3000 travelmaster
# -----------------------------------------------------------------------------------------------
# Usa una imagen de Node.js como base (version: 16)
FROM node:16

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo: package.json
COPY package.json /app

# Instala las dependencias
RUN yarn install

# Copia los archivos del proyecto a la imagen (ignora los archivos listados en .dockerignore)
COPY . .

# Comando para ejecutar la aplicación React
CMD ["yarn", "start"]