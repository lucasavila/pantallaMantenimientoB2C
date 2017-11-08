#!/bin/sh
echo "Construyendo pantalla de mantenimiento B2C"
grunt clean
grunt build

if [ $? -ne 0 ];
    then exit 1
fi

echo "Construyendo la imagen de mantenimiento B2C"
docker build -t docker.dev.redbee.io/pantalla-mantenimiento-b2c .
echo "Publicando la imagen mantenimiento B2C"
docker push docker.dev.redbee.io/pantalla-mantenimiento-b2c

