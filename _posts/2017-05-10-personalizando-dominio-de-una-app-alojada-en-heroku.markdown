---
layout: post
title:  "Personalizando el dominio de una APP alojada en heroku"
image: /post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku.jpg
date:   2017-05-17 12:00:00 -0300
categories: dominio heroku web
author: Carlos Alcalde
author_tw: xinoon
---
Aprende como personalizar el dominio de tu APP alojada en heroku, al que tu desees.
<!--more-->

# Contexto

Me pidieron personalizar un dominio de una aplicación web que estaba alojada en heroku. Heroku, te crea la app y te da un dominio para acceder a tu aplicación, la cual es del tipo ***http://miapp.herokuapp.com***, y lo que necesitaban era poder asociar este dominio a uno del tipo ***http://www.miapp.cl***.

En mi poder, solo tenía acceso al panel de configuración de heroku y el acceso al dominio que fue comprado en **nic.cl** (como dato adicional, no existía algún servidor externo).

Fue así como después de preguntar, probar, solucionar unos problemas, finalmente se logro el objetivo. Para esto se utilizó las herramientas gratuitas que ofrece [www.cloudflare.com](http://www.cloudflare.com)

**Un detalle: es necesario tener si o si una tarjeta de crédito, ya sea visa o mastercard, no se te cobrará nada!!, pero es necesario asociarla a tu cuenta de heroku**

# Empecemos!!


## Creación y configuración de cuenta en [www.cloudflare.com](http://www.cloudflare.com)

1. Lo primero que debemos hacer, es crear una cuenta en [www.cloudflare.com](http://www.cloudflare.com). Lo que nos entregará _Cloudflare_, son los **DNS** que más adelante ocuparemos para configurar nuestro dominio.

2. Una vez que creamos nuestra cuenta, debemos añadir un nuevo sitio web, esto lo hacemos agregando el dominio que utilizaremos. En este caso ocuparemos de ejemplo el dominio de _www.ivdevs.cl_. Lo ingresamos y hacemos clic en _"Scan DNS Records"_.
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/1.jpg)

3. Nos aparecera una barra con una cuenta regresiva, esperamos que llegue a 0 y si todo está bien, hacemos clic en _"Continue"_.
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/2.jpg)

4. Luego, tendremos que configurar nuestros **DNS Records.** Para ello agregaremos dos registros del tipo **CNAME:**
```
CNAME | ivdevs.cl | ivdevs.herokuapp.com
CNAME | www | ivdevs.herokuapp.com
```
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/3.jpg)

5. En el siguiente paso, debemos seleccionar el tipo de plan de _Cloudflare_ que utilizaremos. En este caso, marcaremos el plan **Free** y hacemos clic en _"Continue"_.
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/4.jpg)

6. Finalmente _Cloudflare_, nos dará los **DNS** que debemos agregar en nuestro dominio.
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/5.jpg)

7. Los que nos pide a continuación _Cloudflare_, es que modifiquemos los **DNS** en nuestro dominio, ya que si hacemos clic en _"Continue"_, este nos mostrará el estado de nuestro servicio. En este caso, el Status es **"Status: Pending"**, esto porque todavía no configuramos nuestro dominio, que es lo que haremos a continuación.

> Cabe destacar, que la actualización de los cambios, al añadir los DNS en nuestro dominio, puede durar desde unos minutos hasta 24-48 horas, por lo que el status puede demorar en cambiar.


## Configuración en heroku.

Lo que debemos hacer en heroku, es agregar un dominio personalizado. Para esto se deben seguir los siguientes paso:

1. Necesitamos **agregar si o si nuestra tarjeta de crédito a heroku.** Esto tenemos que  hacer para verificar nuestra cuenta. Como se comentó anteriormente **no se descontará dinero de tu tarjeta!**, es solo para validar la identidad. Para añadir nuestra tarjeta de crédito ingresamos al siguiente link [https://dashboard.heroku.com/account/billing](https://dashboard.heroku.com/account/billing) que se encuentra en la configuración de nuestra cuenta.

2. Una vez agregada la tarjeta, vamos a nuestro dashboard e ingresamos a nuestra aplicación. Luego vamos a la opción **"Settings"** y bajamos a la opción **"Domains and certificates"** y hacemos clic en el botón _"Add domain"_
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/6.jpg)

3. Debemos agregar agregar dos dominios:
```
www.ivdevs.cl
ivdevs.cl
```
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/7.jpg)


## Configuración dominio

Ya que tenemos configurado _Cloudflare_ y _heroku_, el último paso es configurar nuestro dominio. En este caso configuraremos un dominio .cl, por lo que lo haremos desde *nic.cl*. El proceso es el mismo si es que tienen un dominio .com, .net, etc., y con el proveedor que sea.

1. Ingresamos a nuestra cuenta en **nic.cl** e ingresamos en nuestro dominio registrado

2. Bajamos a la parte de **"servidores de nombre (DNS)"**, y agregamos los dos DNS que nos entrego _Cloudflare_.
![Personaliza tu dominio de heroku](/assets/img/post/2017-05-10-personalizando-dominio-de-una-app-alojada-en-heroku/8.jpg)

3. Finalmente actualizamos los datos cambiados en nuestro dominio.

----

Listo!, ya tenemos nuestra aplicación alojada en heroku con nuestro dominio personalizado.
Recordar que los cambios pueden tardar en verse reflejados hasta 48 horas después. Por experiencia personal, en algunos casos el cambio puede demorar entre un par de minutos a 1-2 horas.

### ¿Porqué cloudflare?

La verdad es que me lo recomendaron, y al revisar, este entrega herramientas gratis, posee distintos planes de acuerdo a las necesidades que puedas tener y cuenta con herramientas como Firewall, SSL, Analytics, entre otras que puedes revisar en su página y que en algún momento puedan servir.
