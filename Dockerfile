FROM php:7.3-cli-buster

RUN apt-get update && apt-get upgrade -y && \
  apt-get update && apt-get install -y \
  apt-utils apt-transport-https
  
RUN apt-get install -y \
  wget curl libcurl4-gnutls-dev \
  libxml2-dev zlib1g-dev \
  libfreetype6 libfreetype6-dev \
  libjpeg-dev libpng-dev libjpeg-progs \
  libzip-dev gnupg xfonts-base xfonts-75dpi \
  && docker-php-ext-configure gd \
  --with-freetype-dir=/usr/include/freetype2 \
  --with-png-dir=/usr/include \
  --with-jpeg-dir=/usr/include \
  && docker-php-ext-install sockets pcntl zip \
  pdo_mysql gd gettext intl soap

