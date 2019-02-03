FROM ubuntu:latest

MAINTAINER Ed Cesar "edcesar@edcesar.com"

RUN apt-get update && \
 apt install -y software-properties-common && \
 apt update && \
 add-apt-repository ppa:ondrej/php && \
 apt install -y software-properties-common \ 
 php7.3-fpm php7.3-common php7.3-mbstring php7.3-xml php7.3-zip \
 git \
 nodejs npm \
 composer \
 mongodb \
 mariadb-serve && \
 npm install -g @angular/cli && \
 npm install -g @vue/cli && \
 /etc/init.d/mysql start

WORKDIR /~/apps

CMD service mysql start && tail -f /dev/null
#CMD ["tail", "-f", "/dev/null"]

