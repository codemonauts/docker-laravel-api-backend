FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -uy upgrade
RUN apt-get -y install locales software-properties-common git zip vim rsync nginx mysql-client curl build-essential autoconf autogen libtool
RUN locale-gen en_US.UTF-8
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update
RUN apt-get -y install php7.2-fpm php7.2-zip php7.2-intl php7.2-cli php7.2-mysql php7.2-curl php7.2-gd php-imagick php7.2-mbstring php7.2-bcmath php7.2-soap php7.2-xml
RUN mkdir /local
RUN cd /usr/local/bin; curl --silent --show-error https://getcomposer.org/installer | php; mv composer.phar composer
ADD includes /
CMD . /run.sh