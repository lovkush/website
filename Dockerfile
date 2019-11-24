FROM centos:latest
MAINTAINER luv
RUN yum -y install httpd
ADD . /var/www/html
