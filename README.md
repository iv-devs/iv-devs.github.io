# IV Devs Website

Sitio de la comunidad **IV Devs** (La Serena / Coquimbo, Chile), publicado en [ivdevs.cl](https://ivdevs.cl).

## Descripción

El proyecto está basado en [Jekyll 4](https://jekyllrb.com/), por lo que usa Ruby para el manejo de templates. El CSS es HTML/CSS/JS plano, por lo que no necesitas compilar estilos aparte.

Dependencias de frontend (vía CDN): **Bootstrap 5.3.9** y **Font Awesome Free 7.3.1**. No se usa jQuery.

## Requisitos

- [Ruby](https://www.ruby-lang.org/es/) 4.0.10 (ver `mise.toml`)
- o Docker

El repositorio incluye `mise.toml`, así que la forma más simple es:

```bash
mise install     # instala Ruby 4.0.10
bundle install
bundle exec jekyll serve
```

Abre [http://localhost:4000](http://localhost:4000).

Si no usas `mise`, necesitas Ruby >= 2.7 y luego:

```bash
bundle install
bundle exec jekyll serve
```

## Instalación en Debian/Ubuntu

```bash
sudo apt-get install ruby-full make gcc
bundle install
bundle exec jekyll serve
```

## Cómo subir un post al blog

Crea un archivo en `_posts` con la convención `YYYY-MM-DD-nombre-del-post.md` y
comienza a redactar. Jekyll usa Markdown para los posts; si no lo manejas, puedes usar este [editor online](https://stackedit.io/editor).

## Opción Docker

El `Dockerfile` usa Ruby 4.0 y deja lista la imagen para desarrollo:

```bash
docker build -t ivdevs/web .
docker run --rm -it -v $(pwd):/home/ivdevs/web -p 4000:4000 ivdevs/web \
  bash -lc "bundle install && bundle exec jekyll serve --host 0.0.0.0"
```

Luego abre [http://localhost:4000](http://localhost:4000).

Si prefieres un contenedor persistente:

```bash
docker run -it --name ivdevsweb -v $(pwd):/home/ivdevs/web --net host ivdevs/web
```

Dentro del contenedor, la primera vez corre `bundle install`. Después lo retomas con `docker start -ia ivdevsweb`.

## Despliegue

El sitio se publica en GitHub Pages mediante GitHub Actions (`.github/workflows/pages.yml`): cada push a `master` construye con Jekyll 4 y despliega el resultado.

- Dominio: definido en `CNAME` (`ivdevs.cl`).
- En GitHub: *Settings → Pages → Source: GitHub Actions*.
- El builder clásico de GitHub Pages usa Jekyll 3.8 y **no** usa este `Gemfile`,
  por eso se migró a Actions.
