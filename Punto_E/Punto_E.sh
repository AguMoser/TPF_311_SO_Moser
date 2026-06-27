#!/bin/bash

echo "========================================"
echo " Generando Filtro_basico.txt"
echo "========================================"

awk '/MemTotal/ {print; exit}' /proc/meminfo > Filtro_basico.txt

awk '/model name/ {print; exit}' /proc/cpuinfo >> Filtro_basico.txt

awk '/cpu MHz/ {print; exit}' /proc/cpuinfo >> Filtro_basico.txt

echo
echo "Filtro_basico.txt generado correctamente."
