#!/bin/sh
echo "Construyendo pantalla de mantenimiento"
grunt clean
grunt build

if [ $? -ne 0 ];
    then exit 1
fi

echo "Construyendo la imagen de mantenimiento"
docker build -t docker.dev.redbee.io/pantalla-mantenimiento-sep .
echo "Publicando la imagen mantenimiento"
docker push docker.dev.redbee.io/pantalla-mantenimiento-sep

