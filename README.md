# Trabajo Práctico Final – Arquitectura de Sistemas Operativos

## Integrantes del grupo

| Usuario GitHub  | Rol      |
| --------------- | -------- |
| AguMoser        | Sysadmin |
| agu-manager-utn | Manager  |
| agu-dev-utn     | Dev      |

## Descripción

Este repositorio contiene la resolución del trabajo práctico final de la materia **Arquitectura de Sistemas Operativos**.

El objetivo del proyecto fue aplicar conceptos de administración de sistemas Linux mediante la automatización de tareas propias de un administrador de infraestructura utilizando scripts Bash y herramientas nativas del sistema.

Durante el desarrollo se trabajó sobre los siguientes temas:

* Creación de estructuras de directorios.
* Particionamiento y formateo de discos.
* Configuración de montajes persistentes mediante `/etc/fstab`.
* Administración de usuarios y grupos.
* Gestión de permisos utilizando notación octal y simbólica.
* Obtención de información del sistema mediante filtros.
* Implementación de un entorno Docker Compose con WordPress y MariaDB.

* **Sysadmin:** creación de la estructura del continente **América** y resolución de la parte individual correspondiente.
* **Manager:** creación de la estructura del continente **Europa** y resolución de la parte individual correspondiente.
* **Dev:** creación de la estructura del continente **Asia** y resolución de la parte individual correspondiente.

## Estructura del repositorio

```text
TPF_311_SO_Moser
├── Punto_A
│   ├── Grupal
│   │   └── Punto_A_Grupal.sh
│   └── Individual
│       └── Punto_A_Individual.sh
├── Punto_B
│   ├── Punto_B_FormatMontaje.sh
│   ├── Punto_B_Particiones.sh
│   └── df_output_sysadmin.txt
├── Punto_C
│   ├── Punto_C.sh
│   └── id_output.txt
├── Punto_D
│   ├── Punto_D.sh
│   └── permisos_output.txt
├── Punto_E
│   ├── Filtro_basico.txt
│   └── Punto_E.sh
├── Punto_F
│   ├── docker-compose.yml
│   └── docker_output.txt
└── README.md
```

## Contenido

| Carpeta | Descripción                                                          |
| ------- | -------------------------------------------------------------------- |
| Punto_A | Creación de estructuras de directorios individuales y grupales.      |
| Punto_B | Particionamiento, formateo y montaje persistente de particiones.     |
| Punto_C | Creación y administración de usuarios y grupos.                      |
| Punto_D | Configuración de permisos mediante notación octal y simbólica.       |
| Punto_E | Obtención de información del sistema utilizando filtros con `awk`.   |
| Punto_F | Implementación de Docker Compose con WordPress y MariaDB (opcional). |

## Herramientas utilizadas

* Ubuntu Server
* Bash
* Git
* GitHub
* Vagrant
* VirtualBox
* Docker
* Docker Compose
* `fdisk`
* `mkfs.ext4`
* `mount`
* `/etc/fstab`
* `awk`
* `chmod`
* `useradd`
* `groupadd`

## Validaciones

Para verificar el correcto funcionamiento de cada punto se utilizaron las herramientas solicitadas en la consigna, cuyos resultados fueron incorporados al repositorio como evidencia de ejecución.

Entre ellas se incluyen:

* `tree`
* `df -h`
* `id`
* `ls -la`
* `docker compose ps`

## Modalidad de desarrollo

Este trabajo fue desarrollado íntegramente por una única persona.

Para reproducir la dinámica de trabajo colaborativo requerida por la consigna, se utilizaron tres cuentas de GitHub correspondientes a los roles de **Sysadmin**, **Manager** y **Dev**. Cada cuenta realizó los commits asociados a su rol, respetando el flujo de trabajo propuesto para el desarrollo del proyecto.

La planificación, implementación, documentación y resolución de todos los puntos del trabajo práctico fueron realizadas por la autora del repositorio.

