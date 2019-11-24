FROM ubuntu:latest
MAINTAINER uday

RUN apt-get update
RUN apt install apache2 -y
RUN service apache2 start
#EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
#ADD run-httpd.sh /run-httpd.sh
#RUN chmod -v +x /run-httpd.sh

#CMD ["/run-httpd.sh"]
ADD . /var/www/html


