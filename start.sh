#!/bin/bash
clear
echo " "
echo "Starting docker..."
echo " "

docker build --build-arg REGIAO=2 --build-arg cidade=133 -t edcesar/dev .

clear

echo " "
echo "Have a Good Working!"
echo " "

docker run -it \
--rm \
-p 80:80 \
-p 8080:8080 \
-p 3200:3200 \
-p 27017:27017 \
-v $(pwd)/apps:/~/apps \
edcesar/dev bash
