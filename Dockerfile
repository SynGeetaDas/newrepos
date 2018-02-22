# This is to build my own apache
FROM centos:latest
MAINTAINER geeta.das@synechron.com
RUN yum -y update
# what is to be run , copy the code
RUN yum -y install httpd
EXPOSE 80
# port change
ADD code /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
