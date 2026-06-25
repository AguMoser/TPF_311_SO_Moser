#!/bin/bash

echo "=== Formateo de particiones ext4 ==="

mkfs.ext4 /dev/sdc1
mkfs.ext4 /dev/sdc2
mkfs.ext4 /dev/sdc5
mkfs.ext4 /dev/sdc6
mkfs.ext4 /dev/sdc7

echo "=== Configurando montaje persistente (fstab con UUID) ==="

# Servicios
echo "UUID=d2ccb89f-07d7-499e-914e-36200286d413 /home/vagrant/sysadmin/Servicios ext4 defaults 0 2" | sudo tee -a /etc/fstab

# Monitoreo base
echo "UUID=3c69956b-0520-4eac-bb70-c6f46b854b65 /home/vagrant/sysadmin/Monitoreo ext4 defaults 0 2" | sudo tee -a /etc/fstab

# Servicios/Web
echo "UUID=89b2bf04-2a15-4a67-b21e-2f3a755cfe34 /home/vagrant/sysadmin/Servicios/Web ext4 defaults 0 2" | sudo tee -a /etc/fstab

# Servicios/Cache
echo "UUID=61f7e4fa-810d-4bcd-ad00-2720f69a16d1 /home/vagrant/sysadmin/Servicios/Cache ext4 defaults 0 2" | sudo tee -a /etc/fstab

# Monitoreo/Logs
echo "UUID=6239762b-7bac-4c68-b4da-4e07f4dff1b8 /home/vagrant/sysadmin/Monitoreo/Logs ext4 defaults 0 2" | sudo tee -a /etc/fstab

echo "=== Montando todo ==="
sudo mount -a

echo "=== Listo ==="
