FROM yiisoftware/yii2-php:7.4-apache

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN docker-php-ext-install sockets
RUN pecl install grpc
