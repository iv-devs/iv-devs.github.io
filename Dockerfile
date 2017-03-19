# Imagen de ruby version 2.2
FROM ruby:2.2
RUN gem install jekyll bundler

# Se crea un usuario para evitar conflicto con los archivos y sus permisos
RUN useradd -ms /bin/bash ivdevs
RUN chown -R ivdevs:ivdevs /home/ivdevs
USER ivdevs
ENV HOME /home/ivdevs
WORKDIR /home/ivdevs/web

# Run jekyll
ENTRYPOINT ["/bin/sh", "-c", "/bin/bash"]
