FROM ubuntu:latest

MAINTAINER Ed Cesar "edcesar@edcesar.com"

RUN apt-get update

RUN apt install software-properties-common -y

RUN add-apt-repository ppa:ondrej/php -y

RUN apt-get update

RUN apt-get install php7.3-fpm php7.3-common php7.3-mbstring php7.3-xml php7.3-zip -y

RUN apt-get install git -y

RUN apt-get install nodejs npm -y

RUN apt-get install composer -y

RUN apt install -y mongodb -y

RUN npm install -g @angular/cli

RUN npm install -g @vue/cli

RUN apt-get install mariadb-server -y

RUN /etc/init.d/mysql start

WORKDIR /~/apps

CMD service mysql start && tail -f /dev/null
#CMD ["tail", "-f", "/dev/null"]

