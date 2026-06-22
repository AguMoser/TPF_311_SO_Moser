#!/bin/bash

echo "=== Aplicando Permisos en Servicios (Octal) ==="

chmod 755 /home/vagrant/sysadmin/Servicios/Web/
chmod 700 /home/vagrant/sysadmin/Servicios/Base_de_Datos/
chmod 644 /home/vagrant/sysadmin/Servicios/Cache/

echo "=== Aplicando Permisos en Monitoreo (Simbólica) ==="

chmod u=rwx,g=rx,o=r /home/vagrant/sysadmin/Monitoreo/Logs/
chmod u=rwx,g=,o= /home/vagrant/sysadmin/Monitoreo/Alertas/
chmod u=rwx,g=rx,o=rx /home/vagrant/sysadmin/Monitoreo/Metricas/

echo "=== Permisos configurados con éxito ==="
