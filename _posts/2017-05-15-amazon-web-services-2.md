---
layout: post
title:  "Amazon Web Services II"
image: /post/aws.png
categories: aws web services cloud computing
author: Cristofer
author_tw: cristofer_dev
author_fb: cristofer.dev
author_gh: cristofer-dev
published: true
---

Ya revisamos los conceptos generales de los "Cloud Services" ahora revisaremos los diferentes servicios que nos ofrece Amazon Web Services.

La historia de Amazon se remonta a inicios de la década de los 90' como una "tímida" tienda de libros online, desde ahí hacia adelante su crecimiento ha sido exponencial tanto en los servicios que ofrece como en las diversas áreas de la industria en las cuales ha ido integrando en su abanico de productos y servicios.

Si nos enfocamos solamente en los servicios del área Ti, es en el año 2006 cuando inicia su oferta de Servicios de computación en la nube, o **Amazon Web Services** como ellos lo bautizaron.

Desde ahí, hacia adelante el lanzamiento de nuevas **características y servicios** ha ido en aumento considerable, en el año **2009** ofrecían *48* servicios, ya en el **2015** ofrecían **722** Servicios y en **2017** alcanzan **2.420** servicios disponibles.

Nos gustaría poder contarte en detalle muchos de ellos, pero entenderás que nos tomaria varios post para conseguirlo, así que en este post trataremos de contarte en forma breve (muy breve) al menos la forma en la que AWS agrupa sus servicios, de este grupo de servicios **elegiremos algunos de ellos que creemos te serán de utilidad** para poder dar tus primero pasos para llevar tus aplicaciones a la nube y en las publicaciones posteriores profundizaremos en ellos.



## Compute
En este grupo de servicios encontraras todo lo referente a **poder y capacidad de computo** como por ejemplo servidores virtuales en la nube (VPS) acá denominados [**Amazon EC2**](https://aws.amazon.com/es/ec2/), ejecutar y gestiona contenedores Docker con [**Amazon EC2 Container Service**](https://aws.amazon.com/es/ecs/), gestiona Escalabilidad horizontal con Auto Scaling o ejecuta código en respuesta a eventos con [**AWS Lambda**](https://aws.amazon.com/es/lambda).


## Storage
Cuando ya tienes el poder de procesamiento cubierto, por lo general la segunda tarea es conseguir almacenamiento persistente (o volátil) en la nube, si necesitas unos pocos MB con [**Amazon S3**](https://aws.amazon.com/es/s3) bastara con hacer drag and drop y tus archivos ya estarán en la nube, elige la mejores prestaciones para los discos de tus instancias EC2 usando unidades persistentes [**EBS**](https://aws.amazon.com/es/ebs) o puedes crear unidades del tipo NFS en tu red privada para disponibilizar archivos y que sean consumidos por múltiples unidades EC2 con las unidades [**EFS**](https://aws.amazon.com/es/efs), y si lo que necesitas es mover gran cantidad de datos (petabytes) puedes recurrir al servicio de [**Amazon Snowball**](https://aws.amazon.com/es/snowball)


## y las Bases de datos ?

Con [**Amazon RDS**](https://aws.amazon.com/es/rds) puedes tener las relaciones MySQL, Oracle, Aurora, PostgrSQL, MariaDB, SQLServer  y si lo que necesitas es no SQL puedes probar [**Amazon DynamoDB**](https://aws.amazon.com/es/dynamodb), también te tienes la opción de crear Bases de datos en Memoria como [**ElastiCache**](https://aws.amazon.com/es/elasticache) y para bases con grandes volúmenes de datos (petabytes) tienes a [**Redshift**](https://aws.amazon.com/es/redshift) todo dependerá de tus necesidades.

## Networking & Content Delivery

En lo que a servicios de red se refiere, puedes crea y mantener redes virtuales privadas con [**Amazon VPC**](https://aws.amazon.com/es/vpc), crea tus propios servicios de CDN para disponibilizar tu contenido con [**Amazon CloudFront**](https://aws.amazon.com/es/cloudfront),  puedes gestionar tus DNS  de forma escalable y en alta disponibilidad con [**Route53**](https://aws.amazon.com/es/route53) y crea conectividad privada entre AWS y tú centro de datos con [**Direct Connect**](https://aws.amazon.com/es/directconnect)


## ¿ Qué hay de los desarrolladores? : Developer Tools
Repositorios con GIT ? claro, con [**CodeCommit**](https://aws.amazon.com/es/codecommit) puedes gestionar todos tus proyectos en repositorios privados y gestionados con GIT, y si necesitas compilar y probar código puedes usar [**CodeBuild**](https://aws.amazon.com/es/codebuild), para la entrega continua [**CodeDeploy**](https://aws.amazon.com/es/codedeploy) y [**CodePipeline**](https://aws.amazon.com/es/codepipeline) serán tus mejores aliados.

## Muchas cosas... se me escapa de las manos : Management Tools
Monitorea todos los servicios en tiempo real con [**CloudWatch**](https://aws.amazon.com/es/cloudwatch), crea y administra recursos utilizando plantilla con [**CloudFormation**](https://aws.amazon.com/es/cloudformation), controla el inventario de los recursos con [**AWS Config**](https://aws.amazon.com/es/config), realiza un seguimiento de la actividad de los usurios y el uso de las APIS, atutomatiza operaciones con [**OpsWorks**](https://aws.amazon.com/es/opsworks), entre otros servicios que te ayudan a administrar y mantener el control de tú infraestructura.

## Security, Identity & Compliance
Con [**Amazon IAM**](https://aws.amazon.com/es/iam/) administra usuarios, contraseñas y acceso a los diversos recursos de la infraestructura, gestiona facilemente Certificados SSL/TSL con [**AWS Certificate Manager**](https://aws.amazon.com/es/certificate-manager), pon una capa de seguridad adicional frente a ataques DDoS con [**AWS Shield**](https://aws.amazon.com/es/shield), filtra trafico malintencionado hacia tus aplicaciones con [**AWS WAF**](https://aws.amazon.com/es/waf)


## Artificial Intelligence
Crea bots conversacionales con voz y texto con [**Amazon Lex**](https://aws.amazon.com/es/lex/), transforme texto en voz con [**Amazon Polly**](https://aws.amazon.com/es/polly/), búsqueda y análisis de imágenes con [**Amazon Rekognition**](https://aws.amazon.com/es/rekognition) e implementa el aprendizaje automatico con [**Amazon Machine Learning**](https://aws.amazon.com/es/machine-learning).


## Internet of Things
IoT poco a poco gana terreno y con [**AWS IoT**](https://aws.amazon.com/es/iot) podrás poner en operaciones tus ideas de IoT en pocos minutos.


## Game Development
Si tu negocio es el desarrollo de videojuegos [**Amazon GameLift**](https://aws.amazon.com/es/gamelift) es un servicio administrado para implementar, utilizar y escalar servidores de videojuegos dedicados para videojuegos multijugador basados en sesiones, y con [**Amazon Lumberyard**](https://aws.amazon.com/es/lumberyard) tienes a disposición un motor de juegos gratuito multiplataforma en 3d integrado con AWS.


## Mobile Services
Su necesitas infraestructura especializada en dispositivos móviles, con [**Amazon Pinpoint**](https://aws.amazon.com/es/pinpoint) puedes gestionar e implementar notificaciones PUSH, [**Amazon Cognito**](https://aws.amazon.com/es/cognito) le permite agregar el registro y el inicio de sesión de forma sencilla a sus aplicaciones web y móviles y con opciones de autenticar a los usuarios a través de proveedores de identidad social, como Facebook, Twitter o Amazon.


## Messaging
Administra colas de mensajes con [**Amazon SQS**](https://aws.amazon.com/es/sqs), envía notificaciones push y sms a móviles con [**Amazon SNS**](https://aws.amazon.com/es/sns) y envía y recibe correos electrónicos con [**Amazon SES**](https://aws.amazon.com/es/ses).

Hasta aquí dejamos esta segunda entrega, no olviden que este es solo un resumen "global" de los servicios de AWS y ya en la próxima entrega empezaremos a ver cosas practicas de como llevar nuestra aplicación a la nube.

Happy Coding y nos vemos en la próxima!