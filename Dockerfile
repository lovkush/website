FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
#RUN service apache2 start
#ENTRYPOINT ["/usr/sbin/apache2"]
ADD . /var/www/html
#RUN service apache2 start 
#ADD . /var/www/html
#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80
#ENTRYPOINT ["apachectl start , -DFOREGROUND"]
#CD service apache2 start && tail -F /var/log/apache2/error.log
ENTRYPOINT service apache2 start && /bin/bash

