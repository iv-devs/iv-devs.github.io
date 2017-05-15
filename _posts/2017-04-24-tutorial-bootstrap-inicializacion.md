---
layout: post
title:  "Bootstrap: Primeros pasos"
image: /post/2017-04-24-bootstrap-2.png
date: 2017-05-08 10:30:00 -0300
categories: bootstrap framework web tutorial
author: Luis Alvarado
author_tw: rhaegarCL

---
En este post aprenderás a configurar paso a paso bootstrap, además conocerás el sistema de grilla que implementa bootstrap
<!--more-->

Si estás aquí y aún no sabes qué es
*bootstrap* te invito a que revises el primer post de esta serie dónde se explica
[¿Qué es?](http://ivdevs.com/blog/2017/04/18/bootstrap-que-es-y-como-implementarlo/).
Para trabajar con *bootstrap* es necesario que sepas *HTML* y *CSS* como base para poder meter manos al código,
dicho esto ¡comencemos!.

## Descargando Bootstrap
Para descargar bootstrap nos dirigimos a su [sitio oficial](http://getbootstrap.com) y le damos al botón de *download*, ahí nos encontraremos con tres opciones de descarga, podemos:
1. ***Descargar el código CSS y JavaScript compilado***, que es la forma más sencilla de empezar a utilizar Bootstrap.
2. ***Descargar el código fuente que contiene todos los archivos Less y JavaScript*** originales de Bootstrap. La desventaja es que requiere un compilador de archivos Less y cierto trabajo de configuración.
3. ***Descargar el código fuente en formato Sass***, se trata de una variante de la versión anterior y que se ha creado para facilitar la integración de Bootstrap en las aplicaciones Ruby On Rails, Compass o cualquier otro proyecto basado en Sass.
4. ***Utilizando el CDN de Bootstrap***, donde en un servidor se encuentra una copia de los archivos CSS y JavaScript.

En este tutorial te enseñaré a instalar bootstrap desde cero para que lo integres con tu proyecto web. Por eso, te recomiendo que descargues la primera opción.
Una vez descargado deberás ver algo como esto, en el cuál aparecen las *carpetas* con los archivos **css**, **fonts** y **js**

![download-bootstrap](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-bootstrap-carpeta.jpg)
*Carpeta descargada con los archivos de bootstrap.*

## Conociendo su estructura y archivos
La estructura y archivos que contiene cada una de las carpetas es la siguiente:
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
Como te puedes dar cuenta para cada archivo se ofrecen dos variantes : los archivos compilados ***bootstrap.css*** y los archivos comprimidos ***bootstrap.min.css***. Tambíen se incluyen las fuentes del proyecto Glyphicons.

***Cuál utilizo ¿compilado o comprimido?*** A menos que tengas que estudiar sus contenidos, siempre es mejor utilizar la versión comprimida (bootstrap.min.css) en vez de la versión simplemente compilada (bootstrap.css).
Los contenidos de los dos archivos son exactamente los mismos, pero la versión comprimida ocupa muchísimo menos. De esta forma consumirás menos ancho de banda y las páginas se cargarán más rápido, especialmente en los servidores de producción.

Luego *copiamos* esas tres carpetas y la pegamos en la carpeta dónde se encuentra nuestro proyecto donde ya existe un *index.html*.

![download-bootstrap](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-pegando-bootstrap-a-tu-proyecto.jpg)
*Carpeta del proyecto con archivos bootstrap.*

Como puedes ver nuestro ***index.html*** aún no tiene nada. Escribamos una etiqueta  `<h1>lorem ipsum</h1>` de prueba.

~~~
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Iniciando tu proyecto con bootstrap</title>
  </head>
  <body>
  </body>
</html>
~~~
*Archivo index.html*

Tu archivo debería quedar así
~~~
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Iniciando tu proyecto con bootstrap</title>
  </head>
  <body>
    <h1>lorem ipsum</h1>
  </body>
</html>
~~~


## El móvil es lo más importante
Para bootstrap los dispositivos móviles son lo más importante, por ende, para que las páginas se muestren correctamente y el zoom funcione bien en los dispositivos móviles, es importante que añadir el `viewport` dentro de la cabecera <head> de nuestro index.html. Esto nos permite definir la anchura de la ventana del navegador para adaptar la página automaticamente.

``<meta name="viewport" content= "width = device-width, user-scalable = no, initial-scale = 1.0, maximun-scale = 1.0, minimum-scale= 1.0">``

Los atributos que podemos agregar al `viewport` pueden ser:
1. device-width
2. device-height
3. initial-scale : 0...1 *(1 indica que es sin escala)*
4. user-scalable : yes...no *(indica si el usuario puede cambiar de la escala)*
5. minimum-scale : 0...1 *(escala mínima del viewport)*
6. maximun-scale : 0...1 *(escala máxima del viewport)*

Siguamos agregando más contenido, agregaremos el `viewport`, un párrafo `<p></p>` con contenido y un botón `<button></button>`.

~~~
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content= "width = device-width, user-scalable = no,
    initial-scale = 1.0, maximun-scale = 1.0, minimum-scale= 1.0">
    <title>Iniciando tu proyecto con bootstrap</title>
  </head>
  <body>
    <h1>lorem ipsum</h1>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
      non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>

    <button class="btn btn-primary">Botón</button>
  </body>
</html>
~~~

Hasta ahora, si miramos nuestra página en el navegador se ve así.

![vista-1](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-vista-4.jpg)
*Vista de archivo index.html en el navegador*

## Llamando a bootstrap

Ahora cargamos nuestro estilo *css* de *bootstrap* de la siguiente manera.

`<link rel="stylesheet" href="css/bootstrap.min.css">`

lo colacamos dentro del `<head></head>` justo después del `meta viewport`, con esto ya estaremos cargando el estilo de bootstrap.

~~~
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content= "width = device-width, user-scalable = no,
    initial-scale = 1.0, maximun-scale = 1.0, minimum-scale= 1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Iniciando tu proyecto con bootstrap</title>
  </head>
  <body>
    <h1>lorem ipsum</h1>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
      non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>

    <button class="btn btn-primary">Botón</button>
  </body>
</html>
~~~

Ahora nuestra página web se deberá ver así de *cool*.

![vista-2](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-vista-2.jpg)
*Vista de archivo index.html en el navegador con el estilo de bootstrap*

![vista-1](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-movil-ipsum2.jpg)
*Vista de archivo index.html en el móvil*

¿Te diste cuenta que el estilo de la página cambio?, pues si, bootstrap hace que contruír tu proyecto sea genial. Pero esto no es todo, debemos agregar *jQuery* porque bootstrap lo utiliza para trabajar con sus componentes de *javascript*.

Nos dirigimos a la página web de [*jQuery*](https://jquery.com/) y le damos al botón de ***download jQuery***.
Luego le damos en la opción de ***"Download the compressed, production jquery 3.2.1"*** y se descargará en nuestro equipo *jQuery*. Una vez descargado, lo que debes hacer ahora es renombrar el archivo ***jquery-3.2.1.min.js*** a ***jquery.js***, luego lo copias y lo pegas dentro de la carpeta ***js*** de tu proyecto.

![jquery-carpeta](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-jquery-carpeta.jpg)
*img 1.8 Carpeta js del proyecto con jQuery*

Volvemos a nuestro código para cargar ***jquery.js*** y el elemento *js* ***bootstrap.min.js*** lo cargaremos antes de que termine la etiqueta de cierre de `body`.

`<script src="js/jquery.js"></script>`

`<script src="js/bootstrap.min.js"></script>``


Una vez que lo hayas agregado tú código debería estar así
~~~
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content= "width = device-width, user-scalable = no,
    initial-scale = 1.0, maximun-scale = 1.0, minimum-scale= 1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Iniciando tu proyecto con bootstrap</title>
  </head>
  <body>
    <h1>lorem ipsum</h1>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
      non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>

    <button class="btn btn-primary">Botón</button>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
~~~

## Conociendo las rejillas
Bootstrap utiliza el diseño de páginas basado en rejilla, se realiza mediante filas y columnas donde se colocan los contenidos. Así funciona la rejilla de Bootstrap:
1. Las filas siempre se definen dentro de un contenedor de tipo `.container` *(anchura fija)* o de tipo `.container-fluid` *(anchura variable)*. De esta forma las filas se alinean bien y muestran el `padding` correcto.
2. Las filas se utilizan para agrupar horizontalmente a varias columnas.
3. El contenido siempre se coloca dentro de las columnas, ya que las filas sólo deberían contener como hijos elementos de tipo columna.
4. Bootstrap define muchas clases CSS (como por ejemplo `.row` y `.col-xs-4`) para crear rejillas rápidamente. También existen mixins de Less para crear diseños más semánticos.
5. La separación entre columnas se realiza aplicando `padding`. Para contrarrestar sus efectos en la primera y última columnas, las filas (elementos `.row`) aplican márgenes negativos.
6. Las columnas de la rejilla definen su anchura especificando cuántas de las 12 columnas de la fila ocupan. Si por ejemplo quieres dividir una fila en 3 columnas iguales, utilizarías la clase `.col-xs-4` (el 4 indica que cada columna ocupa 4 de las 12 columnas en las que se divide cada fila).

![jquery-cargando](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-grilla.jpg)
*Características de cada rejilla*

## Trabajando con las rejillas
Lo más importante de entender, es el sistema de rejillas que plantea Bootstrap.
Debemos pensar que para armar nuestra página, tenemos la posibilidad de definir filas y en cada fila definir de 1 a 12 columnas, cada columna con un ancho relativo a ese número 12.
Luego Bootstrap se encarga de colapsar las columnas cuando se accede al sitio desde un dispositivo con una capacidad limitada en cuanto al ancho en píxeles (*esto permite una experiencia más placentera al visitante que accede a nuestra página desde un celular con capacidades limitadas*)
Para ver y entender como creamos las columnas en cada fila y como colapsan según el ancho del dispositivo podemos analizar el siguiente código:



~~~
<!DOCTYPE html>
<html>
  <head>
    <title>Prueba de Bootstrap</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

  <div class="container">

    <div class="row">
      <div class="col-lg-4"  style="background-color:#aaa">
        <h1>Columna 1</h1>
        <p>Esto es una prueba de bootstrap.</p>
      </div>
      <div class="col-lg-4"  style="background-color:#bbb">
        <h1>Columna 2</h1>
        <p>Esto es una prueba de bootstrap.</p>
      </div>
      <div class="col-lg-4"  style="background-color:#ccc">
        <h1>Columna 3</h1>
        <p>Esto es una prueba de bootstrap.</p>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="col-md-4"  style="background-color:#aaa">
        <h1>Columna 1</h1>
        <p>Esto es una prueba de bootstrap.</p>
      </div>
      <div class="col-md-4"  style="background-color:#bbb">
        <h1>Columna 2</h1>
        <p>Esto es una prueba de bootstrap.</p>
      </div>
      <div class="col-md-4"  style="background-color:#ccc">
        <h1>Columna 3</h1>
        <p>Esto es una prueba de bootstrap.</p>
      </div>
    </div>

    </div>

</body>
</html>

~~~
Debemos utilizar la clase `row` para indicar el comienzo de una fila. Dentro de la fila dispondremos tantos `div` como columnas tenga la fila. Para indicar cada columna debemos utilizar la siguiente sintaxis para cada columna: `col-lg-*``
Donde aparece el * lo remplazamos por un valor entre 1 y 12  *Siempre la suma de dichos valores de una fila debe sumar 12 o quedarán columnas vacías en dicho caso*.



En resumen las clases que se utilizan para hacer que las columnas colapsen son:
1. col-lg-*               (**l**)ar(**g**)e
2. col-md-*               (**m**)e(**d**)ium
3. col-sm-*               (**sm**)all
4. col-xs-*               e(**x**)tra (s)mall


Si abrimos nuestro ejemplo en un monitor con un ancho superior a 1200 px podemos ver que se muestran tres columnas por fila:
![jquery-cargando](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-grilla-grande1.jpg)

Si empezamos a disminuir el ancho del navegador, veremos que cuando el ancho del navegador es menor a 1200px colapsan las columnas de la primer fila y se muestran una debajo de otra. Como sólo le asignamos la clase `col-lg` al colapsar automaticamente adopta el tamaño más próximo, pero no le indicamos que tamaño adoptar cuando colapse así que se ajustará al tamaño más pequeño `col-xs`.

¿Por qué la segunda fila no colapsa?. Esto se debe a que hemos definido la segunda columna con la clase `col-md`y esta se reducirá cuando el ancho del navegador sea menos de 992px.

![jquery-cargando](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-grilla-mediana1.jpg)

Para probar podemos seguir reduciendo el ancho del navegador y verás que ahora colapsan tanto la primera fila como la segunda.

![jquery-cargando](/assets/img/post/2017-24-04-iniciando-tu-proyecto-en-bootstrap/2017-04-24-grilla-peque1.jpg)

Bien hasta ahora hemos visto como descargar e instalar bootstrap, también aprendiste a enlazar los archivos *css* y *js*. Por último exploramos el sistema de rejilla con la cual trabaja bootstrap. Te animo a que sigas practicando con las clases y columnas para dominar estos contenidos. Espero que te haya sido de tu agrado este post y te sirva. Por favor déjame tu comentario y nos vemos en el siguiente tutorial de ***bootstrap***.
