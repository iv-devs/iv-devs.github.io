---
layout: post
title:  "Cloud Services"
image: /post/2017-04-12-cloud-services.jpg
categories: aws web services cloud computing
author: Cristofer
author_tw: cristofer_dev
author_fb: cristofer.dev
author_gh: cristofer-dev
published: true
---

Da tus primeros pasos para poner tus apps en la nube.


## Lo Primero

Internet opera en base a los grandes data center que existen alrededor del mundo y en ellos se alojan gran parte de los servicios que utilizamos a diario y si tenemos una app, ¿ no sería buena idea poder utilizar esa gran infraestructura para poder distribuir nuestra aplicación o servicio?.

¿Cuán costoso en tiempo y dinero podría ser ? ¿ esta a mi alcance ? ¿ es demasiado complejo ? Pueden ser muchas las dudas al comienzo pero es normal que cuando nos enfrentamos a tecnologías que desconcocemos, es parte del proceso y de esta profesión que nos apasiona.

En este post trataremos de aclarar parte de las dudas mencionadas anteriormente y esperamos sea el primero de una pequeña serie de posts que nos permitan llevar a la práctica algunas cosas en lo que a **Cloud Services** se refiere.


## Conociendo el entorno

Seguro que los primeros **"encuentros cercanos"** con servidores han sido con los clasicos **hosting**, cuando en nuestros inicios levantamos algún sitio web para algún pequeño comercio de papas fritas o para la tía petunia que vendía calcetines, y en aquella epoca estaba bien, andaba a la perfección y bastaba con un FTP, un par de archivos en PHP (_si, php_) y todo andaba a la perfección.

Actualmente tenemos millones de dispositivos móviles conectados a internet, y las ventas de calcetines ya se podrían hacer desde el movil, el flujo de datos aumenta, el número de peticiones crece exponencialmente, los negocios crecen y tú como profesional debes saber enfrentar estoicamente los avances y cambios tecnológicos.


## Herramientas disponibles

No existen solucienes unicas y perfectas, a cada problema una solución, y por eso es importante conocer las **herramientas** con las que cuentas para poder solucionar y abordar cada situación.

si queremos categorizar o listar los servicios actualmente disponibles en el mercado, podriamos hacerlo de la siguiente forma (no es la única)

1.- Hosting Compartido
2.- VPS
3.- Servidor Propio
4.- Servicios On Cloud

 
## ¿ Cúal me sirve ?

Ya sabemos que no hay fomulas exactas ni recetas secretas para que la tía petunia venda más calcetines, por eso vamos a ver una pequeña descripción de cada alternativa.

### Hosting Compartido

El **viejo**, clasico y (~~no tan~~) confiable **hosting** compartido ha sido el buque insignia de la armada de las paginas webs, son (~~eran~~) las opciones mas económicas para poder contar un servidor donde disponibilizar tu aplicación o sitio web.

Si buscamos una definicion más técnica:

> "...permite tener una cantidad variable de dominios y sitios web en una misma máquina..." [Wiki](https://es.wikipedia.org/wiki/Alojamiento_compartido)

En palabras simples, es un servidor en el cual coexistes multiples clientes que pagan por una porción de los recursos del servidor, por tanto es como **arrendar una habitación en una vivienda**, los problemas que cause un inquilino, afectaran directa o indirectamente a los demás, si un inquilino provoca un corto circuito este afectara a todos los que compartan la vivienda.

En cuanto a libertades, esta de más decir que si quieres remodelar tu habitación, simplemente debes ceñirte a las normas de convivencia para no afectar a los demás, en resumen libertad mínima frente a la necesidad de crecer.


### VPS

Un departamento en el condominio

Esto nos dara mayor independencia y todos la queremos ( o la necesitamos ) en algún momento.

Necesitas instalar una nueva BD que esta super cool, pero en el **hosting compartido** no podías, por que todos usaban MySQL y no habia opción de cambiar, pues bien, esta es tu dpto y pones lo que se te antoje, habilitas cuantos puertos necesites, aplicas las restriciones que esten a tu antojo e instalas los servicios que se te apetescan, y lo que es mejor, todos los servicios de la maquina estan a tu disposición a un `enter` de terminal por ssh, si, oiste bien `SSH`, ya no mas sincronizaciones con `FTP` o cosas extrañas ahora hasta puedes instalarte `GIT` y codear como un verdadero chuck norris.

Al ser un **virtual private server** (VPS) contaremos con ciertas limitantes de acceso al hardware propios de la virtualización, pero la ventaja es que al no ser tú el propietario, cuando necesites mas espacio, simplemente puedes cambiarte pagando el costo adicional.


### Servidor propio

La casa propia aunque costosa, es la opcion que te da mas libertad, eres completamente amo y señor del servidor, es como un VPS, pero sin las limitantes de la virtualización, tienes tanto los **servicios** como el **hardware** a tu disposición.

La desventaja,  es costoso actualizar el hardware, dado que lo compraste, eres tu quien debe costear todos los gastos del hardware, tanto de reparación como de actualización.


### Servicios On Cloud

La vida en hoteles, aquí la cosa cambia un poquito, por el concepto, dado que ya no vemos un servidor, y muchas otras cosas del tipo **sysadmin** son algo transparentes, como desarrolladores mas bien nos enfocamos en utilizar (y pagar por ello)  diversos servicios o microservicios especializados.

¿Servicios especializados?... eso ya suena diferente, pero no es complicado. Por ejemplo, cuando necesitas montar una base de datos, si lo haces mediante un Servicio, bastara con conseguir al proveedor, elegir las caracteristicas de la BD que necesitas y ellos te entregaran el *endpoint* y las *credenciales* necesarias para poder operar, tu pagaras por dicho servicio, pero no debes preocuparte de la **infraestructura** de la BD, simplemente la utilizas y el el proveedor quien se encarga de mantenerla operativa, por tanto, el crear una BD no tomara mas de 5 min y las mantenciones o escalamientos posteriores tambien se limitaran a un par de clics.

Las BD como servicio es uno de muchos ejemplos que se ofrecen hoy en dia, a tal punto que actualmente con un par de clics podemos **desplegrar** aplicaciones completas sin tener que montar un sólo servidor, sin siquiera instalar un sistema operativo base, olvidarnos de instalaciones y actualizaciones de paquetes.

Suena genial no?, pero no todo en la vida es miel sobre hojuelas, y ya hablaremos mas en detalle sobre ello, por ahora, quedamos hasta aquí y nos encontramos en un proximos post.

Hasta la próxima.