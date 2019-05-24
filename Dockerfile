# docket file for httpd
FROM centos:7
MAINTAINER jadiga
RUN yum -y update
RUN yum -y install httpd
ADD code /var/www/html
EXPOSE 80
ENV BACKENDLB=test
ENV BACKEND test
CMD ["apachectl", "-D", "FOREGROUND"]