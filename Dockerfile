FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
ADD . /var/www/html
EXPOSE 80
CMD service apache2 start && /bin/bash

