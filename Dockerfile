FROM php:7.4-cli-buster

RUN apt-get update && apt-get upgrade -y && \
  apt-get update && apt-get install -y \
  apt-utils apt-transport-https procps
  
RUN apt-get install -y \
  curl libcurl4-gnutls-dev \
  libxml2-dev zlib1g-dev \
  libfreetype6 libfreetype6-dev \
  libjpeg-dev libpng-dev libjpeg-progs \
  libzip-dev gnupg xfonts-base xfonts-75dpi \
  libonig-dev
RUN docker-php-ext-install sockets pcntl zip \
  pdo_mysql gd gettext intl soap

