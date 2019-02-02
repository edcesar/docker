FROM ubuntu:latest

MAINTAINER Ed Cesar "edcesar@edcesar.com"

RUN apt-get update

RUN apt install software-properties-common -y

RUN apt-get install php-fpm php-common php-mbstring php-xml php-zip -y

RUN apt-get install git -y

RUN apt-get install nodejs npm -y

RUN apt-get install composer -y

RUN apt install -y mongodb -y

RUN npm install -g @angular/cli

RUN npm install -g @vue/cli

WORKDIR /~/apps

CMD ["tail", "-f", "/dev/null"]

