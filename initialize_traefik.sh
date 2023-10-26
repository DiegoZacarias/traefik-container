#!/bin/bash

# Pedir confirmación al usuario
read -p "¿Estás seguro de que deseas ejecutar el script? (y/n): " confirmation

# Verificar la respuesta del usuario
if [ "$confirmation" == "y" ]; then
    # Comprobamos si la red ya existe
    if [ -z "$(docker network ls --filter name=traefik-net -q)" ]; then
        # La red no existe, la creamos
        docker network create traefik-net
        echo "La red 'traefik-net' ha sido creada."
    else
        echo "La red 'traefik-net' ya existe."
    fi

    # Verificamos si el servicio Traefik está activo
    if docker compose ps | grep -q "traefik"; then
        echo "Traefik ya está en ejecución."
    else
        # Luego, ejecutamos docker-compose up -d para iniciar Traefik
        docker compose up -d
        echo "Traefik ha sido iniciado."
    fi
else
    echo "Operación cancelada. No se ejecutará el script."
fi

