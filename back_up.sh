#!/bin/bash

# Nombre del script: backup_semanal.sh

# Verificar si se ha proporcionado una carpeta como argumento
if [ -z "$1" ]; then
    echo "ejecutando: $0 sobre $1"
    exit 1
fi

# Directorio a respaldar
ORIGEN="$1"

# Directorio de destino para las copias de seguridad
DESTINO="$2"  # Cambia esto a tu directorio de destino deseado

# Crear la carpeta de destino si no existe
mkdir -p "$DESTINO"

# Nombre del archivo de respaldo (ej. backup-2024-08-28.tar.gz)
FECHA=$(date +"%Y-%m-%d")
NOMBRE_RESPALDO="backup-$FECHA.tar.gz"

# Crear el archivo de respaldo
tar -czf "$DESTINO/$NOMBRE_RESPALDO" -C "$ORIGEN" .

# Verificar si el respaldo fue exitoso
if [ $? -eq 0 ]; then
    echo "Respaldo creado con éxito: $DESTINO/$NOMBRE_RESPALDO"
else
    echo "Error al crear el respaldo."
    exit 1
fi

# Configurar el cron para ejecutar este script semanalmente
# Puedes agregar esta línea al cron manualmente:
# 0 0 * * 0 /ruta/a/backup_semanal.sh /ruta/a/la/carpeta
