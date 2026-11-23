FROM ruby:4.0

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    build-essential \
    git \
  && rm -rf /var/lib/apt/lists/*

RUN gem install bundler -v 4.1.0 --no-document

# Se crea un usuario para evitar conflicto con los archivos y sus permisos
RUN useradd -ms /bin/bash ivdevs
RUN chown -R ivdevs:ivdevs /home/ivdevs
USER ivdevs
ENV HOME=/home/ivdevs
ENV BUNDLE_PATH=/home/ivdevs/bundle
ENV BUNDLE_APP_CONFIG=/home/ivdevs/.bundle

WORKDIR /home/ivdevs/web

CMD ["/bin/bash"]
