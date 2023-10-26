# Uso del Contenedor con Traefik

Este repositorio contiene un contenedor configurado con Traefik, que te permite enrutar el tráfico hacia tus servicios de manera eficiente. Sigue estos pasos para usar el contenedor:

## 1. Clona el Repositorio

Clona este repositorio en tu servidor:

```bash
git clone https://github.com/DiegoZacarias/traefik-container.git
```

## 2. Copia el Archivo `.env.example`

Copia el archivo `.env.example` y configura el puerto que deseas utilizar. Por ejemplo, si quieres usar el puerto 8080:

```bash
cp .env.example .env
```

Luego, edita el archivo `.env` y establece el valor del puerto y el host:

```plaintext
TRAEFIK_PORT=8080
TRAEFIK_HOST=traefik.localhost
```

## 3. Da Permisos al Archivo `initialize_traefik.sh`

Asegúrate de que el archivo `initialize_traefik.sh` tenga permisos de ejecución. Puedes hacerlo con el siguiente comando:

```bash
chmod +x initialize_traefik.sh
```

## 4. Ejecuta el Script para Iniciar Traefik

Ejecuta el script `initialize_traefik.sh` para iniciar Traefik y configurar la red "traefik-net":

```bash
./initialize_traefik.sh
```

## 5. Accede a tus Servicios

Ahora, puedes acceder a tus servicios utilizando el dominio configurado y el puerto que especificaste en el archivo `.env`. Por ejemplo, si configuraste el puerto 8080 y tu dominio es `domain.com`, puedes acceder a tus servicios en `http://domain.com:8080`.

¡Listo! Ahora tienes Traefik en funcionamiento para enrutar el tráfico hacia tus servicios. Asegúrate de que tus servicios estén configurados con las etiquetas de Traefik adecuadas para que Traefik pueda enrutar el tráfico correctamente.

Para obtener más detalles sobre cómo configurar tus servicios específicos con Traefik, consulta la documentación de Traefik.
