FROM alpine:latest

MAINTAINER Juanjo Algaz <jalgaz@gmail.com>

COPY . /app


RUN apk add --update --no-cache \
    python3 \
    bash \
    zlib \
    curl \
    jpeg \
    jpeg-dev \
    libpng \
    tiff \
    python3-dev \
    py-pip \
    build-base \
    wget \
    postgresql-dev \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip setuptools \
    && ln -s /lib/libz.so /usr/lib/ \
    && pip install virtualenv \
    && apk update \
    && apk upgrade \
    && pip install --upgrade pip \
    && virtualenv --python=python3 /env \
    && /env/bin/pip install -r /app/requirements.txt \
    && rm -rf /var/cache/apk/* \
    && rm -r /root/.cache


WORKDIR /app
#ADD requirements.txt /opt/app

# onbuild sirve para imágenes que son a su vez base de otras imágenes, interesante para 
# tener la parte de dependencias configurada, a excepción de los requirements.txt, que se instalarían al crear la imagen hija
#ONBUILD RUN virtualenv --python=python3.5 /env \
#  && /env/bin/pip install -r /app/requirements.txt


CMD ["/env/bin/python", "/app/times_site/manage.py", "runserver", "0.0.0.0:8000"]
