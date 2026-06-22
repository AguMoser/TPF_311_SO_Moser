#!/bin/bash

echo "=== Creando Grupos ==="
sudo groupadd g_infra
sudo groupadd g_sysadmin
sudo groupadd g_manager
sudo groupadd g_dev

echo "=== Generando Hashes y Creando Usuarios ==="
#hashes generados con OpenSSL usando SHA-512 (algoritmo -6)
HASH_SYSADMIN=$(openssl passwd -6 u_sysadmin)
HASH_MANAGER=$(openssl passwd -6 u_manager)
HASH_DEV=$(openssl passwd -6 u_dev)

# Crea los usuarios pasándole el hash de la clave encriptada con -p
sudo useradd -m -s /bin/bash -g g_sysadmin -G g_infra -p "$HASH_SYSADMIN" u_sysadmin
sudo useradd -m -s /bin/bash -g g_manager -G g_infra -p "$HASH_MANAGER" u_manager
sudo useradd -m -s /bin/bash -g g_dev -G g_infra -p "$HASH_DEV" u_dev

echo "=== Usuarios y Grupos creados con éxito ==="
