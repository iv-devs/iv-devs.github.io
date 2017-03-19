---
layout: post
title:  "Aprende a crear tu primer post"
image: default.jpg
date:   2017-01-05 05:30:24 -0300
categories: crear primer post tutorial
author: Hugo Páez Jiménez
author_tw: DerKows
author_fb: DerKow
author_gh: HPaez
---
Aprende como crear tu primer post en el blog de la comunidad, y también aprender como utilizar markdown.
<!--more-->

# ¿Cómo obtener los archivo de la web de IV Devs?

Hoy enseñaremos como crear un post en el blog de la comunidad y aportar a esta.  

Primero realizaremos un fork al repositorio de [IV Devs](http://iv-devs.github.io/), accediendo en el siguiente link <https://github.com/iv-devs/iv-devs.github.io>  

![Fotografía 1](http://image.prntscr.com/image/c32bbb03391d4d0ba708bd0cdc9abcad.png)  

![Fotografía 2](http://image.prntscr.com/image/da7b59b68cd2438b8b5896a029796f1c.png)  

Luego de haber hecho el fork, clonamos el repositorio en nuestro computador o laptop e ingresamos a la carpeta creada  

![Fotografía 3](http://image.prntscr.com/image/d701ab8478134d909b3a1ba4d7246bee.png)  

Además, tendremos que crear una rama llamada post/nombre-del-post  

![Fotografía 4](http://image.prntscr.com/image/e9d835a22f2648b782f7e921ad1a10a2.png)  

Como siguiente paso creamos un archivo en la carpeta _posts, con la siguiente nomenclatura, YYYY-MM-DD-nombre-del-post.markdown, en el caso de este post, sería así __`2017-01-05-como-crear-tu-primer-post.markdown`__.  

![Fotografía 5](http://image.prntscr.com/image/b0395bbb601749b0b1b32381b97847be.png)  

Como quinto paso, por convención, el post debe llevar lo siguiente como cabecera  

```
---
layout: post
title:  "Titulo del post"
date:   YYYY-MM-DD HH:MM:SS -0300
categories: jekyll update
author: Author del post
author_tw: Twitter del Autor //Opcional
author_fb: Facebook del Autor //Opcional
author_gh: Github del autor //Opcional
---
Luego de esto escribimos algunas líneas como descripción del post y para finalizar la descripción escribimos lo siguiente  
<!--more-->
```

Algo como la siguiente imagen.  

![Fotografía 6](http://image.prntscr.com/image/fc16c889cf38455a9c7119927026e51c.png)  

Para poder ver los cambios y todo, es necesario tener instalado Ruby (no necesariamente rails) y ejecutar las siguientes instrucciones:  

```
gem install jekyll bundler
bundle install
bundle exec jekyll serve
```

Luego de ejecutar las instrucciones, podremos ingresar en el siguiente enlace <http://localhost:4000>  
Ya teniendo todo esto listo, ahora solo queda ver algunos tips:  
Como realizar un listado fácil, de estas dos formas:  

```
 1. Prueba 1
 2. Prueba 2
 3. Prueba 3
```

Otra forma es:  

```
 * Prueba 1
 * Prueba 2
 * Prueba 3
```

# Cómo utilizar markdown

Como hacer cursiva:  

```
*Texto con cursiva*
```

Segunda forma de hacer cursiva:  

```
_Texto con cursiva_
```

Texto con negrita:  

```
**Texto en negrita**
```

Segunda forma de hacer negrita:  

```
__Texto en negrita__
```

Texto en negrita y cursiva:  

```
***Texto en negrita y cursiva***
```

Segunda forma de hacer negrita y cursiva:  

```
___Texto en negrita y cursiva___
```

Como realizar títulos para los post:  

Títulos (h1)  

```
# Título en h1
```

Títulos (h2)  

```
## Título en h2
```

Títulos (h3)  

```
### Título en h3
```

Como ingresar un enlace a su post, existen varias formas   

Forma 1:  

```
[Texto a mostrar](http://ivdevs.com/ "texto al pasar el mouse")
```
Forma 2:  

```
[Texto a mostrar](http://ivdevs.com/)
```

Forma 3:  

```
<http://url>
```

Como hacer citas  

```
> Esto es una cita
>> Esto es una cita sobre una cita
> Esto es parte de la primera cita

```

Dos formas de ingresar imágenes, la primera como mostrar una foto con título  

```
![Texto representativo](http://ivdevs.com/img/logo.png "titulo")
```

Segunda forma sin título  

```
![Texto representativo](http://ivdevs.com/img/logo.png)
```

Como colocar código

```
 ```
 SELECT id, name, last_name
 WHERE id = 1;
 ```
```

# ¿Cómo subir los cambios a producción?

Finalmente como subir estos cambios al blog  
Primero deberemos agregar nuestros cambios con:  

```
git add -A
```

Luego guardar estos cambios con:  

```
git commit -m "Mensaje del commit. Preferentemente utilizar esta nomenclatura: CREATE 2017-01-05-como-crear-tu-primer-post"
```

También deberemos cambiarnos de rama con:  

```
git checkout master
```

Mezclaremos la rama post con master con la siguiente instrucción:  

```
git merge post/nombre-de-la-rama
Ej.
git merge post/how-to-create-a-post
```

Eliminamos la rama post  

```
git branch -d post/nombre-de-la-rama
Ej.
git branch -d post/how-to-create-a-post
```

Subimos nuestros a cambios al repositorio con:

```
git push origin master
```

Al final debería aparecer algo como la siguiente imagen:  

![Fotografía 7](http://image.prntscr.com/image/014f626a5de446faadf1d19ff3f03c4c.png)  

Luego de haber realizado esto deberemos entrar en el respositorio de la página web de iv-devs que esta en su cuenta.  
Cuando nos situemos en la página iremos a pull request (Estará remarcada en rectángulo rojo)  

![Fotografía 8](http://image.prntscr.com/image/097e09137645408a8b8088830796e66b.png)

Nos aparecerá una página como la de la fotografía y deberemos dar clic a create pull request.  

![Fotografía 9](http://image.prntscr.com/image/ef4a2762e3504ab4941adb719d0b368a.png)

Luego de todo eso, nos aparecerá la siguiente página, y aquí deberemos ingresar un texto descriptivo de lo que realizamos o de que tratará nuesto post, cuando todo este listo daremos clic a Create pull request, y tan solo quedará a esperar a que acepten tu post!.  

![Fotografía 10](http://image.prntscr.com/image/491d5058105943c293129ea2cde4ae24.png)

# Últimas Palabras
Como cierre al tema central de este post, esto se utiliza en varias webs, hasta en git al realizar los readme.md, etc. además enseñamos lo básico de como enviar cambios, obtener los archivos de un repositorio, estaremos al 100% para poder contribuir a los diferentes repositorios que hay en GitHub en este momento, así como también en nuestro repositorio donde se encuentra la web de IV Devs y otros que se podrían estar realizando con el tiempo.