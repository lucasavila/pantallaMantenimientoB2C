#!/bin/bash

docker stop pantalla-mantenimiento
docker rm pantalla-mantenimiento

docker run --name pantalla-mantenimiento -p 8888:80 -d docker.dev.redbee.io/pantalla-mantenimiento-sep
