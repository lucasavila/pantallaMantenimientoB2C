#!/bin/bash

docker rmi docker.dev.redbee.io/pantalla-mantenimiento-b2c

docker stop pantalla-mantenimiento-b2c

docker rm pantalla-mantenimiento-b2c

docker run --name pantalla-mantenimiento-b2c -p 8889:80 -d docker.dev.redbee.io/pantalla-mantenimiento-b2c
