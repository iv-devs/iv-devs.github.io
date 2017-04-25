---
layout: post
title:  "Iniciando tu proyecto en Bootstrap"
image: /post/2017-04-24-bootstrap-2.png
date: 2017-04-24 16:30:00 -0300
categories: bootstrap framework web tutorial
author: Luis Alvarado
author_tw: rhaegarCL

---
En este post aprenderás a configurar paso a paso bootstrap para que quede
correctamente instalado y así comenzar tú proyecto web.

<!--more-->

Si estás aquí y aún no sabes qué es
*bootstrap* te invito a que revises el primer post de esta serie dónde se explica
[¿Qué es y cómo implementarlo?](http://ivdevs.com/blog/2017/04/18/bootstrap-que-es-y-como-implementarlo/).
Para trabajar con *bootstrap* es necesario que sepas *HTML* y *CSS* como base,
además, ya tienes que tener descargado bootstrap en tu equipo. Dicho esto ¡comencemos!.

Si ya lo tienes descargado deberás ver algo como esto, en el cuál aparecen las *carpetas* con los archivos **css**, **fonts** y **js** que explicamos en el
[post anterior](http://ivdevs.com/blog/2017/04/18/bootstrap-que-es-y-como-implementarlo/).

![download-bootstrap](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-bootstrap-carpeta.jpg)
*img 1.0 Carpeta descargada con los archivos de bootstrap.*

Luego *copiamos* esas tres carpetas y la pegamos en la carpeta dónde se encuentra nuestro proyecto donde ya existe un *index.html*.

![download-bootstrap](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-pegando-bootstrap-a-tu-proyecto.jpg)
*img 1.1 Carpeta del proyecto con archivos bootstrap.*

Como puedes ver en la *img 1.2* nuestro ***index.html*** aún no tiene nada. Escribamos una etiqueta  `<h1>lorem ipsum</h1>` de prueba como se ve en la *img 1.3*.

![html-1](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-html-1.jpg)
*img 1.2 Archivo index.html sin etiquetas `<h1>`*
![html-1](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-html-2.jpg)
*img 1.3 Archivo index.html con etiquetas `<h1>`*

Es muy importante agregar la etiqueta `meta viewport` para controlar la composición en los navegadores móviles, después de todo de las finalidades de bootstrap es hacer *webs responsivas*. Introduce el `meta viewport`en el `<head></head>` de tu *index.html*
~~~
<meta name="viewport" content="width=device-width,user-scalable=no, initial-scale=1.0,maximun-scale=1.0,minimum-scale=1.0">
~~~
Seguimos agregando más contenido un párrafo `<p></p>` y un botón `<button></button>`.
![bootstrap-3](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-bootstrap-4.jpg)
*img 1.4 Archivo index.html con etiquetas `<p></p> y <button></button>`*


Hasta ahora, si miramos nuestra página en el navegador se vería así.

![vista-1](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-vista-4.jpg)
*img 1.5 Vista de archivo index.html en el navegador sin cargar bootstrap*


Ahora cargamos nuestro estilo *css* de *bootstrap* de la siguiente manera.

~~~
<link rel="stylesheet" href="css/bootstrap.min.css">
~~~
lo colacamos dentro del `<head></head>` justo abajo del `meta viewport`, con esto ya estaremos cargando el estilo de bootstrap.
![bootstrap-3](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-bootstrap-3.jpg)
*img 1.6 Archivo index.html con la hoja de estilo agregada*

Ahora nuestra página web se debe ver así de *cool*.

![vista-2](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-vista-2.jpg)
*img 1.7 Vista de archivo index.html en el navegador con el estilo de bootstrap*

¿Te diste cuenta que el estilo de la página cambio?, pues si, bootstrap hace que contruír tu proyecto sea genial. Pero esto no es todo, debemos agregar *jQuery* porque bootstrap lo utiliza para trabajar con sus componentes de *javascript*.

Nos dirigimos a la página web de [*jQuery*](https://jquery.com/) y le damos al botón de ***download jQuery***.

![jquery-1](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-jquery-1.jpg)
*img 1.8 Vista del sitio oficial de jQuery*

Luego le damos en la opción de ***"Download the compressed, production jquery 3.2.1"*** y se descargará en nuestro equipo *jQuery* como aparece en la imagen 1.9

![jquery-2](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-descargar-jquery.jpg)
*img 1.9 Vista del sitio oficial de jQuery opción de descarga*

Una vez descargado, lo que debes hacer ahora es renombrar el archivo `jquery-3.2.1.min.js` a `jquery.js`, luego lo copias y lo pegas dentro de la carpeta ***js*** de tu proyecto.

![jquery-carpeta](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-jquery-carpeta.jpg)
*img 2.0 Carpeta js del proyecto con jQuery*

Volvemos a nuestro código para cargar `jquery.js` y elemento *js* `bootstrap.min.js` lo cargaremos antes de que termine de la etiqueta de cierre de `body`, así como lo indica la imagen 2.1.

~~~
<script src="js/jquery.js"></script>
~~~
~~~
<script src="js/bootstrap.min.js"></script>
~~~

![jquery-cargando](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-cargar-jquery.jpg)
*img 2.1 Vista del código con jQuery y elementos js cargados*

Te recomiendo trabajar sin los ***CDN*** porque si en alguna ocasión no dispones de conexión a internet tu página no cargará los estilos de *bootstrap*, por eso te enseñe a instalar los archivos a tu proyecto para que no tengas esa dificultad.

Espero que te haya gustado este post. Por favor déjame tu comentario y nos vemos en el siguiente tutorial de ***bootstrap***
