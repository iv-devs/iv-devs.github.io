---
layout: post
title:  "Configuración de Raspberry Pi 3"
image: default.jpg
date:   2017-01-11 00:00:00 -0300
categories: raspberry configuration tutorial
author: Arie
author_tw: arie_cwhat
author_fb: arie.cwhat
author_gh: arie-cwhat
---
Aprende a configurar tu Raspberry Pi 3, para dejarla lo más optima posible.

<!--more-->

# Configuración de Raspberry Pi 3

[![Raspberry](https://www.raspberrypi.org/wp-content/uploads/2014/03/plug-in-website.gif)](https://www.raspberrypi.org/help/)

## [](#copiar_imagen)Copiar la imagen a la Micro Sd (o SD)

Descarga la imagen desde el [sitio oficial](https://www.raspberrypi.org/downloads/)

* Si usas Windows:

  Puedes usar [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/) para escribir la imagen en la SD

* Si usas Débian/Ubuntu:
 
  Usa el comando `dd` de linux para escribir la imagen.
  
Si no tienes ni teclado ni mouse USB debes conectar la Raspberry a Ethernet para poder configurarla, si no tienes cable, puedes usar WiFi.

## [](#conectar)Conectar la Raspberry

Conecta la Raspberry a cualquier fuente de energia de 5V con una intensidad de entre 750mA a 2.5A. A veces funciona con 0.5mA pero como mínimo se recomienda 1A para evitar fallas en la escritura de la SD y otros problemas asociados, algunos se documentan en [R-Pi Troubleshooting, Power Section](http://elinux.org/R-Pi_Troubleshooting#Power_.2F_Start-up).

Necesitas la dirección IP de tu Raspberry, si no conoces la dirección IP puedes puedes usar una herramienta para esto:

* Android

  Para escanear la red desde tu telefono puedes usar [Fing](https://play.google.com/store/apps/details?id=com.overlook.android.fing) o [IP tools](https://play.google.com/store/apps/details?id=com.ddm.iptools)

* Débian/Ubuntu

  Usa el comando NMAP
  
Luego debes iniciar sesión. Abre una conexión SSH a la raspberry:

* Débian/Ubuntu

  Abre una terminal y escribe:
  
  ```
  ssh pi@<ip>
  ```
* Windows

  Descarga [Putty](http://www.putty.org/).
  
* Android

  Instala [ConnectBot](https://play.google.com/store/apps/details?id=org.connectbot)
  
Luego de abrir la conexión ingresa los datos (si no ingresaste el usuario antes, ahora te preguntará):

* El usuario es

> pi 

* La contraseña es

> raspberry
  
## [](#configurar)Configuración Básica

Estos son los pasos que debes seguir para configurar la raspberry, si usas la versión gráfica abre una terminal y escribe:

* Ampliar la partición
  
  ```
  sudo raspi-config
  ```
  
  Luego usas la opción `Expand Filesystem` que sirve para ampliar la partición al tamaño del la tarjeta SD
  
* Elimina el software innecesario (solo en versión gráfica, en lite pasar a actualizar)
  
  ```
sudo apt-get purge claws-mail gpicview xpdf raspberrypi-artwork bluej greenfoot idle* pypy pypy-lib debian-reference-en debian-reference-common dillo epiphany-browser gvfs* libservlet2.5-java netsurf-* zenity* libreoffice* minecraft-pi nodered nuscratch penguinspuzzle python-minecraftpi python-pygame python3-pgzero python3-piface* python3-pygame python3-uno scratch sense-hat smartsim sonic-pi timidity wolfram-engine
```
  Luego para eliminar los paquetes que fueron instalados como dependencias y ya no son necesarios:<br> 
  
  ```
  sudo apt-get autoremove --purge
  ```
  
* Actualizar
  
  ```
  sudo apt-get update
  sudo apt-get dist-upgrade
  sudo apt-get clean
  ```
  
  Para reiniciar
  
  ```
  sudo shutdown -r now
  ```
  
  Para apagar
  
  ```
  sudo shutdown -h now
  ```
  
* Cambiar la configuración del usuario

  Para cambiar el usuario por defecto debes conectarte como superusuario, para eso hay que habilitar la opción en la configuración del servidor SSH.
  
  Abre el fichero de configuración
  
  ```
  sudo nano /etc/ssh/sshd_config
  ```
  
  Cambia las lineas
  
  > PermitRootLogin without-password
  
  por
  
  > PermitRootLogin yes
  
  Reinicia el servicio
  
  ```
  service ssh restart
  ```
  
  Cambia la contraseña des usuario actual (pi) la contraseña por defecto es 'raspberry'
  
  ```
  passwd
  ```
  
  Cambia la contraseña del usuario root
  
  ```
  sudo su
  passwd
  exit
  ```
  
  Reconectate como usuario root y escribe la contraseña que definiste antes.
  
  Cambia el usuario por defecto (pi) y el directorio HOME por defecto, renombra el grupo primario y el directorio del usuario
  
  ```
  usermod -l <nuevo nombre> <viejo nombre, por defecto es 'pi'>
  usermod -m -d /home/<nuevo nombre> <nuevo nombre>
  groupmod -n <nuevo nombre> <nuevo nombre>
  mv /home/<nuevo nombre> /home/<nuevo nombre>
  ```

## [](#otras_configuraciones)Otras configuraciones

## [](#otros_comandos)Otros comandos

### [](#informacion)Información de la Raspberry

* CPU

  ```
  cat /proc/cpuinfo
  ```
  
* Memoria

  ```
  cat /proc/meminfo
  ```

* Particiones de la SD

  ```
  cat /proc/partitions
  ```
  
* Versión del sistema operativo

  ```
  cat /proc/version
  ```
  
* Temperatura

  ```
  vcgencmd measure_temp
  ```
  
* Dispositivos USB Conectados

  ```
  lsusb
  ```
