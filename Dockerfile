FROM guyton/centos6
MAINTAINER Vikram U (vicky.y2k1@gmail.com)
RUN yum update -y
RUN yum install httpd -y
ADD src /var/www/html
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80