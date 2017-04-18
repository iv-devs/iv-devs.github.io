---
layout: post
title:  "Bootstrap ¿Qué es y como implementarlo?"
image: /post/2017-18-04-bootstrap-que-es-y-como-implementarlo.png
date: 2017-04-18 16:30:00 -0300
categories: bootstrap framework web
author: Luis Alvarado
author_tw: rhaegarCL
---
Conoce este cool framework y como empezar a implementarlo en tus próximos proyectos web.

<!--more-->

### *Antes de comenzar necesitas saber lo siguiente:*

## *¿Qué es?*
Lo primero que debes tener claro es que Bootstrap es un ***framework*** ¿qué demonios es un framework?  

*¡Fácil! un framework no es nada más que un conjunto de código que puedes utilizar para hacer un sistema personalizado muy simple o muy complejo.*

Bien ahora ya sabes lo que es un *framework* asi que continuemos con bootstrap.

Bootstrap fue desarrollado por Twitter, tiene como gran objetivo facilitar el diseño web sirviendo de guía para emplear buenas prácticas y estándares. Algunas características son:

* Permite crear de manera fácil sitios web que son adaptables o *responsives* para ajustarse a cualquier dispositivo y tamaños de pantalla.

* Podemos conseguir un sitio web muy organizado visualmente.


* Posee un sistema de grillas en la cuál maqueteamos el sitio mediante columnas que lo hace bastante fácil.

* Se integra perfectamente con liberías de Javascript.

* Posee una comunidad muy grande y activa que lo respalda.

* Permite la utilización de *Sass* y *Less* para hacer aún más *pro* el estilo de tu web.

 Lo mejor de Bootstrap es que *It's free!* es de código abierto por lo cual podemos usarlo de manera gratuíta y sin limitaciones

## *¿Cómo lo consigo?*

Para empezar a utilizar Bootstrap debes dirigirte a su [sitio oficial](http://getbootstrap.com/) y darle al botón de *"Download Bootstrap"*

![download-bootstrap](/assets/img/post/download-bootstrap.jpg)

Una vez que le das al botón de descarga te mostrará las diferentes opciones para utilizar bootstrap

![opciones-descarga-bootstrap](/assets/img/post/opciones-descarga-bootstrap.jpg)

Si optamos por la opción de *Download Bootstrap*, se descargará una carpeta la cual debemos descomprimir y agregarla a la carpeta de nuestro proyecto, veremos algo como esto:

~~~
bootstrap/
├── css/
│   ├── bootstrap.css
│   ├── bootstrap.min.css
│   ├── bootstrap-theme.css
│   └── bootstrap-theme.min.css
├── js/
│   ├── bootstrap.js
│   └── bootstrap.min.js
└── fonts/
    ├── glyphicons-halflings-regular.eot
    ├── glyphicons-halflings-regular.svg
    ├── glyphicons-halflings-regular.ttf
    └── glyphicons-halflings-regular.woff

~~~
Estos archivos son la forma más sencilla de utilizar Bootstrap en cualquier proyecto web, es ideal cuando quieres desarrollar y no siempre cuentas con acceso a internet.

Como te darás cuenta cada archivo aparece de dos formas diferentes estos son: los archivos compilados  *(bootstrap.css)* y los archivos compilados más los comprimidos *(bootstrap.min.css)*. También encontramos las fuentes de los iconos de *Glyphicons* y el tema opcional de bootstrap.

Después en nuestro *index.html* llamamos a la hoja de estilo de bootstrap, esto lo hacemos colocándolo dentro de la etiqueta ``<head> </head>`` si sabemos HTML podremos entender esto:
~~~
<html>
  <head>
    <meta charset = "UTF-8">
    <title>Aprendiendo Bootstrap</title>
    <link rel="stylesheet" href="css/bootstrap.css">
  </head>
</html>
~~~
La otra forma de utilzarlo es mediante el *Bootstrap CDN*, con esto no es necesario descargarlo solo basta con colocar los links correspondientes en el *index.html* y ya estarás utilizando bootstrap. por ejemplo:

~~~
<html>
  <head>
    <meta charset = "UTF-8">
    <title>Aprendiendo Bootstrap</title>
    <!-- Versión compilada y comprimida del CSS de Bootstrap -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">

    <!-- Tema opcional -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">

    <!-- Versión compilada y comprimida del JavaScript de Bootstrap -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
  </head>
</html>
~~~

Cabe mencionar que todos los plugins JavaScript de bootstrap requieren el uso de la librería de *jquery*, por lo que debemos incluirlo en las plantillas para que funcionen correctamente.

Bien hasta acá sólo hemos conocido bootstrap y como descargarlo.
En los próximos post exploraremos todo el potencial de este increible framework.
